
![chaos](https://repository-images.githubusercontent.com/890686002/646de726-363a-408a-af43-d5e1612b6b5c)

# Chaos

Some Chaos In Your Code.

[![Crystal Version](https://img.shields.io/badge/Crystal-1.14.0-black?logo=crystal)](https://crystal-lang.org/)
[![GitHub Release](https://img.shields.io/github/v/release/gabrioliv/chaos?display_name=release&logo=crystal&color=white)](https://github.com/GabriOliv/chaos/releases)

![CI Tests Workflow](https://img.shields.io/github/actions/workflow/status/gabrioliv/chaos/ci.yml?logo=github)

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
chaos.probability = 0.8 # chaos probability -> 80%
puts chaos.chaos(true) # => random value of type Bool based on the probability
```

## Development

1. Clone the repository
	```
	git clone git@github.com:GabriOliv/chaos.git
	```
2. Enter the project folder
	```
	cd chaos
	```
3. Run the tests
	```
	crystal spec -v --fail-fast
	```
4. Make your changes

## Contributing

1. Fork it (<https://github.com/gabrioliv/chaos/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make your changes
4. Maintain the quality steps:
	1. Maintain tests updated (`crystal spec -v --fail-fast`)
	2. Maintain the formatting: (`crystal tool format`)
	4. Update the documentation: (`crystal docs`)
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request

## Contributors

- [Gabriel Laureano](https://github.com/GabriOliv) - creator and maintainer

---
