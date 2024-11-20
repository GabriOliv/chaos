require "./chaos/*"

module Chaos
  class Chaos
    # Default probability
    DEFAULT_PROBABILITY = 0.5

    # Initialize with default probability
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # ```
    def initialize
      # The instance variable `@probability` is initialized with the default probability.
      @probability = DEFAULT_PROBABILITY
    end

    # Getter for the current probability
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability # => 0.5
    # ```
    def probability : Float64
      @probability
    end

    # Set a new probability
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.set_probability(0.8)
    # chaos.probability # => 0.8
    # ```
    def set_probability(new_probability : Float64)
      @probability = new_probability
    end

    # Reset to the default probability
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.set_probability(0.8)
    # chaos.probability # => 0.8
    # chaos.reset_probability
    # chaos.probability # => 0.5
    # ```
    def reset_probability
      @probability = DEFAULT_PROBABILITY
    end
  end
end
