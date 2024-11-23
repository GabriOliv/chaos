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
  end
end
