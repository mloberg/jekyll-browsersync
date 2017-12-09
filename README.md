# Jekyll Browsersync

Add live reloading to your Jekyll development using [Browsersync](https://www.browsersync.io/).

## Requirements

* Jekyll >= 3
* [Browsersync](https://www.browsersync.io/) installed
  * globally (`npm install -g browser-sync` ) **OR**
  * locally (`npm install browser-sync`)

## Installation

Add this line to your application's Gemfile:

    gem 'jekyll-browsersync', group: [:jekyll_plugins]

Then install it

    $ bundle

## Usage

Once you have it installed, you should have a new `browsersync` command under Jekyll.

    $ bundle exec jekyll browsersync

If you have Browsersync installed in a custom location, you can specify this with the
`--browser-sync` option.

    $ bundle exec jekyll browser-sync --browser-sync ~/bin/browser-sync

If you would like to serve the site using https, use the `--https` option.

    $ bundle exec jekyll bs --https

If you have any other options you would like passed to the Browsersync command,
pass them as arguments.

    $ bundle exec jekyll browsersync -- --no-notify

## Contributing

1. Fork it (https://github.com/mloberg/jekyll-browsersync/fork)
2. Create your feature branch (`git checkout -b feature/my-awesome-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-awesome-feature`)
5. Create new Pull Request

## TODO

* Write tests
