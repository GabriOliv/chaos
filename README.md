![chaos](https://repository-images.githubusercontent.com/890686002/646de726-363a-408a-af43-d5e1612b6b5c)

# Chaos

[![Crystal Version](https://img.shields.io/badge/Crystal-1.14.0-black?logo=crystal&style=flat-square)](https://crystal-lang.org/)
[![GitHub Release](https://img.shields.io/github/v/release/gabrioliv/chaos?display_name=release&logo=crystal&color=white&style=flat-square)](https://github.com/GabriOliv/chaos/releases)
[![CI Tests Workflow](https://img.shields.io/github/actions/workflow/status/gabrioliv/chaos/ci.yml?logo=github&style=flat-square)](https://github.com/GabriOliv/chaos/actions)

[Install](https://github.com/GabriOliv/chaos#installation) |
[Usage](https://github.com/GabriOliv/chaos#usage) |
[Development](https://github.com/GabriOliv/chaos#development) |
[Contributing](https://github.com/GabriOliv/chaos#contributing) |
[Shards.info](https://shards.info/github/GabriOliv/chaos) | 
[Docs on CrystalDoc](https://crystaldoc.info/github/GabriOliv/chaos/)

---

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

1. Fork the repository: [Fork Chaos](https://github.com/gabrioliv/chaos/fork)
2. Create your feature branch:  
   ```bash
   git checkout -b my-new-feature
   ```
3. Make your changes.
4. Follow these quality steps to ensure consistency:
   - Update and run tests:  
     ```bash
     crystal spec -v --fail-fast
     ```
   - Format your code:  
     ```bash
     crystal tool format
     ```
   - Update the documentation:  
     ```bash
     crystal docs
     ```
5. Commit your changes:  
   ```bash
   git commit -am 'Add some feature'
   ```
6. Push the branch:  
   ```bash
   git push origin my-new-feature
   ```
7. Create a new Pull Request.

---
