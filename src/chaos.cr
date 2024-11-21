require "./chaos/*"

module Chaos
  class Chaos
    # Default probability
    DEFAULT_PROBABILITY = 0.5

    @probability : Float64 = DEFAULT_PROBABILITY

    # Getter for the current probability
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # puts chaos.probability # => 0.5
    # ```
    def probability=(@probability : Float64)
    end

    # Setter for the new probability
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.probability # => 0.8
    # ```
    def probability
      @probability
    end

    # Resets probability to its default value
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.probability # => 0.8
    # chaos.reset_probability
    # puts chaos.probability # => 0.5
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
    # chaos.probability = 0.8
    # puts chaos.chaos(true) # => random value of type Bool based on the probability
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

    # Returns a chaotic string value based on the given probability.
    #
    # This method takes a `String` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns the reversed value of the input `variable`.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # chaos.chaos("abcdefghi") # => shuffled string based on the probability
    # ```
    def chaos(variable : String) : String
      rand < @probability ? variable.reverse : variable
      rand < @probability ? variable.chars.shuffle.join : variable
    end

    # Symbol

    # Returns a chaotic array value based on the given probability.
    #
    # This method takes an `Array` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns the reversed value of the input `variable`.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # chaos.chaos([1, 2, 3, 4, 5]) # => shuffled array based on the probability
    # ```
    def chaos(variable : Array) : Array
      rand < @probability ? (variable = variable.reverse) : variable
      rand < @probability ? (variable = variable.shuffle) : variable
    end

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
