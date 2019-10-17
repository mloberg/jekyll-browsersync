# Jekyll Browsersync

Add live reloading to your Jekyll development using [Browsersync](https://www.browsersync.io/).

## Installation

First install Browsersync:

    npm install --save-dev browser-sync
    # or globally with
    npm install -g browser-sync

Then add this line to your application's Gemfile:

    gem 'jekyll-browsersync', group: [:jekyll_plugins]

Finally install it

    $ bundle

## Usage

Once you have it installed, you'll have a `browsersync` Jekyll command.

    $ bundle exec jekyll browsersync --help

You can pass options to browser sync with `--`:

    $ bundle exec jekyll browsersync -- --no-notify --config browsersync.js

## Contributing

1. Fork it (https://github.com/mloberg/jekyll-browsersync/fork)
2. Create your feature branch (`git checkout -b feature/my-awesome-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-awesome-feature`)
5. Create new Pull Request
