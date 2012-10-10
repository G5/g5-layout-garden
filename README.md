# G5 Hub

A Rails application that publishes a feed consisting of hEntries as defined by [Microformats 2](http://microformats.org/wiki/microformats-2#h-entry). See the demo at [g5-hub.herokuapp.com](http://g5-hub.herokuappcom).


## Setup

1. Install all the required gems
```bash
bundle
```

1. Set up your database
```bash
cp config/database.example.yml config/database.yml
vi config/database.yml # edit username
rake db:create db:schema:load db:seed
```

1. Set ENV variables
    * `CONFIGURATOR_WEBHOOK_URL`

## Authors

  * Jessica Lynn Suttles / [@jlsuttles](https://github.com/jlsuttles)


## Contributing

1. Fork it
1. Get it running
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Write your code and **specs**
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create new Pull Request

If you find bugs, have feature requests or questions, please
[file an issue](https://github.com/G5/g5_hub/issues).


## License

???
