# Release Notes for Version 0.0.2

## New Features

- **Chaos Methods**: Introduced methods to manage chaos probability and generate chaotic values.
	- `Chaos::Chaos#chaos`: Generates changes based on the configured probability.
		- Supported Types: `Bool`, `String`, `Array`.
		- Example usage:
			```crystal
			chaos = Chaos::Chaos.new
			chaos.probability = 0.8
			puts chaos.chaos(true) # => 80% chance of returning false
			```

## Refactoring

- **Chaos Class**: Refactored the getter and setter methods for the `probability` attribute.
	- Example usage:
		```crystal
		chaos = Chaos::Chaos.new
		chaos.probability = 0.8
		puts chaos.probability
		```

### Improvements

- Enhanced documentation with example.
- Expanded test coverage for the `Chaos::Chaos` class.

---