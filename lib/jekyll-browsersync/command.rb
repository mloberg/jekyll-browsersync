# frozen_string_literal: true

require "pty"
require "tty-which"

module Mlo
  module Jekyll
    module BrowserSync
      class Command < ::Jekyll::Command
        def self.init_with_program(prog)
          prog.command(:browsersync) do |c|
            c.syntax "browsersync [options]"
            c.description "Serve the site using Browsersync"

            options.each { |opt| c.option(*opt) }

            add_build_options(c)

            c.action { |args, options| process(args, options) }
          end
        end

        def self.options
          [
            ["host", "-H", "--host [HOST]", "Host to bind to"],
            ["port", "-P", "--port [PORT]", "Port to listen on"],
            ["open", "-o", "--open", "Launch your site in a browser"],
            ["browsersync", "-e", "--cli [PATH]", "Path to browsersync CLI"],
          ]
        end

        def self.process(args = [], options = {})
          config = configuration_from_options(options)
          config["serving"] = true
          config["watch"] = true unless config.key?("watch")

          cli = config["browsersync"] || self.browsersync()
          args << "--server #{config["destination"]}"
          args << "--files #{config["destination"]}"
          args << "--port #{config["port"]}"
          args << "--host #{config["host"]}"
          args << "--no-open" unless config["open"]
          cmd = "#{cli} start #{args.join(" ")}"

          if `#{cli} --version 2>/dev/null`.empty?
            raise "Unable to locate browser-sync binary."
          end

          ::Jekyll::Commands::Build.process(config)

          PTY.spawn(cmd) do |stdout, stdin, pid|
            trap("INT") { Process.kill "INT", pid }
    
            begin
              stdout.each { |line| ::Jekyll.logger.info(line.rstrip) }
            rescue
            end
          end
        end

        private

        def self.browsersync
          File.exists?(DEFAULT_BROWSERSYNC_PATH) ? DEFAULT_BROWSERSYNC_PATH : TTY::Which.which("browser-sync")
        end
      end
    end
  end
end
