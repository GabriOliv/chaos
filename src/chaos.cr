require "./chaos/*"

module Chaos
  class Chaos
    # Default probability
    DEFAULT_PROBABILITY = 0.5

    # Initialize with default probability
    def initialize
      @probability = DEFAULT_PROBABILITY
    end

    # Getter for the current probability
    def probability : Float64
      @probability
    end

    # Set a new probability
    def set_probability(new_probability : Float64)
      @probability = new_probability
    end

    # Reset to the default probability
    def reset_probability
      @probability = DEFAULT_PROBABILITY
    end
  end
end
