# Release Notes for Version 0.0.3

## New Features

- **Chaos Methods**: Introduced methods to manage chaos in more types.
	- `Chaos::Chaos#chaos`: Generates changes based on the configured probability.
		- New Supported Types:
			- Integers: `Int8`, `Int16`, `Int32`, `Int64`, `UInt8`, `UInt16`, `UInt32`, `UInt64`.
			- Floats: `Float32`, `Float64`.
			- Characters: `Char`.
			- Range: `Range`.

## Refactoring

- chaos(String): Refactored to return more chaotic value using chaos(Char).

### Improvements and Fixes

- Corrected getter and setter documentation for the `probability` attribute.
- Added validation to ensure the `probability` attribute is between 0.0 and 1.0.
- Implemented a generic method to handle unsupported types.

---