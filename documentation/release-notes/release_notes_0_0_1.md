# Release Notes for Version 0.0.1

## New Features

- **Chaos Class**: Introduced the `Chaos::Chaos` class to manage chaos experiments.
  - Example usage:
    ```crystal
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.8)
    puts chaos.probability
    ```

- **Chaos Methods**: Added methods to manage chaos probability and generate chaos values.
  - `Chaos::Chaos#set_probability` to set custom probability of chaos.
  - `Chaos::Chaos#reset_probability` to reset the probability to the default value.

### Improvements

- New logo for the project.

---