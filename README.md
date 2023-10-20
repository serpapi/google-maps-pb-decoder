# google-maps-pb-decoder

[![CI](https://github.com/serpapi/google-maps-pb-decoder/actions/workflows/main.yml/badge.svg)](https://github.com/serpapi/google-maps-pb-decoder/actions/workflows/main.yml)

Decodes the protobuf parameters used in Google Maps into readable JSON for easy inspection and debugging.

## Installation

Add to your Gemfile:

```ruby
gem 'google_maps_pb_decoder'
```

Then, run `bundle install`.

Or, install the gem directly:

```
gem install google_maps_pb_decoder
```

## Usage

```
google_maps_pb_decoder <pb_encoded_string>
```

For example:

```
google_maps_pb_decoder '!3m1!4b1!4m6!3m5!1s0x80dcd7d12b3b5e6b:0x2ef62f8418225cfa!8m2!3d33.8120918!4d-117.9189742!16zL20vMDJmenM'
```

Output:
```
[[true], [["0x80dcd7d12b3b5e6b:0x2ef62f8418225cfa", [33.8120918, -117.9189742], "L20vMDJmenM"]]]
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
