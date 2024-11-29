require "./chaos/*"

module Chaos
  # Default probability
  DEFAULT_PROBABILITY = 0.5

  @@probability : Float64 = DEFAULT_PROBABILITY

  # Getter for the current probability
  #
  # Example:
  #
  # ```
  # chaos = Chaos::Chaos.new
  # puts chaos.probability # => 0.5
  # ```
  def self.probability
    @@probability
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
  def self.probability=(value : Float64)
    if value < 0.0 || value > 1.0
      raise ArgumentError.new("Probability of Chaos must be between 0 and 1")
    end
    @@probability = value
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
  def self.reset_probability
    @@probability = DEFAULT_PROBABILITY
  end

  # Facade method to access Modifier Class
  def self.modifier(object : Object) : Object
    rand < Chaos.probability ? Modifier.apply(object) : object
  end
end
