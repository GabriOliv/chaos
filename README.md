
![chaos](https://repository-images.githubusercontent.com/890686002/646de726-363a-408a-af43-d5e1612b6b5c)

# Chaos

Some Chaos In Your Code.

[![Crystal Version](https://img.shields.io/badge/Crystal-1.14.0-black?logo=crystal)](https://crystal-lang.org/)
[![GitHub Release](https://img.shields.io/github/v/release/gabrioliv/chaos?display_name=release&logo=crystal&color=white)](https://github.com/GabriOliv/chaos/releases)

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     chaos:
       github: gabrioliv/chaos
   ```

2. Run `shards install`

## Usage

```crystal
require "chaos"

chaos = Chaos::Chaos.new
chaos.set_probability(0.8)
puts chaos.probability
```

## Development

1. Clone the repository
2. Enter the project folder
3. Run the tests with `crystal spec --verbose`
4. Make your changes

## Contributing

1. Fork it (<https://github.com/gabrioliv/chaos/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make your changes
	1. Run the tests with `crystal spec --verbose`
	2. Make sure the code is formatted with `crystal tool format`
	3. Maintain and update the tests
	4. Update the documentation
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

## Contributors

- [Gabriel Laureano](https://github.com/GabriOliv) - creator and maintainer

---
