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

    # Nil
    def chaos(variable : Nil) : Nil
      variable
    end

    # Returns a chaotic boolean value based on the given probability.
    #
    # This method takes a `Bool` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns the opposite value of the input `variable`.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.set_probability(0.8)
    # chaos.chaos(true) # => random value of type Bool based on the probability
    # ```
    def chaos(variable : Bool) : Bool
      rand < @probability ? !variable : variable
    end

    # Integer int8

    # Integer int16

    # Integer int32

    # Integer int64

    # Integer int128

    # Integer uint8

    # Integer uint16

    # Integer uint32

    # Integer uint64

    # Integer uint128

    # Float float32

    # Float float64

    # Char

    # String
    def chaos(variable : String) : String
      rand < @probability ? variable.reverse : variable
    end

    # Symbol

    # Array

    # Array-like

    # Hash

    # Hash-like

    # Range

    # Regex

    # Tuple

    # NamedTuple

    # Proc

    # Command
  end
end
