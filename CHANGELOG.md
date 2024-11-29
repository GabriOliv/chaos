# Changelog

---

Structure:

- **Added** for new features.
- **Changed** for changes in existing functionality.
- **Deprecated** for soon-to-be removed features.
- **Removed** for now removed features.
- **Fixed** for any bug fixes.
- **Security** in case of vulnerabilities.

---

## Unreleased

- **Added**
	- Added ChangeLog to document changes in the project.
	- Added Release Notes folder to store release notes for each version.
- **Changed**
	- gitignore: Updated to allow the ChangeLog and Release Notes folder on documentation.
	- refactor: Implement Singleton and Facade design patterns
- **Deprecated**
- **Removed**
- **Fixed**
- **Security**

---

## v0.0.3

- **Added**
	- Introduced methods to manage chaos in more types.
		- New Supported Types:
		- Integers: `Int8`, `Int16`, `Int32`, `Int64`, `UInt8`, `UInt16`, `UInt32`, `UInt64`.
		- Floats: `Float32`, `Float64`.
		- Characters: `Char`.
		- Range: `Range`.
	- Implemented a generic method to handle unsupported types.
- **Changed**
	- chaos(String): Refactored to return more chaotic value using chaos(Char).
	- Added validation to ensure the `probability` attribute is between 0.0 and 1.0.
- **Fixed**
	- Corrected getter and setter documentation for the `probability` attribute.

---

## v0.0.2

- **Added**
	- **Chaos Methods**: Introduced methods to manage chaos probability and generate chaotic values.
		- Supported Types: `Bool`, `String`, `Array`.
	- Enhanced documentation with example.
	- Expanded test coverage for the `Chaos::Chaos` class.
- **Changed**
	- **Chaos Class**: Refactored the getter and setter methods for the `probability` attribute.

---

## v0.0.1

- **Added**
	- **Chaos Class**: Introduced the `Chaos::Chaos` class to manage chaos experiments.
	- **Chaos Methods**: Added methods to manage chaos probability and generate chaos values.
		- `Chaos::Chaos#set_probability` to set custom probability of chaos.
		- `Chaos::Chaos#reset_probability` to reset the probability to the default value.
	- New logo for the project.

---