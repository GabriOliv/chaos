module Chaos
  private class Modifier
    # Returns a chaotic value based on the given probability.

    # Nil
    def self.apply(variable : Nil) : Nil
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
    def self.apply(variable : Bool) : Bool
      return !variable
    end

    # Returns a chaotic integer Int8 value based on the given probability.
    #
    # This method takes an `Int8` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 8-bit integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(8_i8) # => random value of type Int8 based on the probability
    # ```
    def self.apply(variable : Int8) : Int8
      return Random.rand(-128_i8..127_i8).to_i8
    end

    # Returns a chaotic integer Int16 value based on the given probability.
    #
    # This method takes an `Int16` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 16-bit integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(16_i16) # => random value of type Int16 based on the probability
    # ```
    def self.apply(variable : Int16) : Int16
      return Random.rand(-32_768_i16..32_767_i16).to_i16
    end

    # Returns a chaotic integer Int32 value based on the given probability.
    #
    # This method takes an `Int32` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 32-bit integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(32_i32) # => random value of type Int32 based on the probability
    # ```
    def self.apply(variable : Int32) : Int32
      return Random.rand(-2_147_483_648_i32..2_147_483_647_i32).to_i32
    end

    # Returns a chaotic integer Int64 value based on the given probability.
    #
    # This method takes an `Int64` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 64-bit integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(64_i64) # => random value of type Int64 based on the probability
    # ```
    def self.apply(variable : Int64) : Int64
      return Random.rand(-9_223_372_036_854_775_808_i64..9_223_372_036_854_775_807_i64).to_i64
    end

    # Returns a chaotic integer Int128 value based on the given probability.
    #
    # This method takes an `Int128` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 128-bit integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(128_i128) # => random value of type Int128 based on the probability
    # ```
    def self.apply(variable : Int128) : Int128
      return Random.rand(-170_141_183_460_469_231_731_687_303_715_884_105_728_i128..170_141_183_460_469_231_731_687_303_715_884_105_727_i128).to_i128
    end

    # Returns a chaotic integer UInt8 value based on the given probability.
    #
    # This method takes an `UInt8` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 8-bit unsigned integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(8_u8) # => random value of type UInt8 based on the probability
    # ```
    def self.apply(variable : UInt8) : UInt8
      return Random.rand(0_u8..255_u8).to_u8
    end

    # Returns a chaotic integer UInt16 value based on the given probability.
    #
    # This method takes an `UInt16` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 16-bit unsigned integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(16_u16) # => random value of type UInt16 based on the probability
    # ```
    def self.apply(variable : UInt16) : UInt16
      return Random.rand(0_u16..65_535_u16).to_u16
    end

    # Returns a chaotic integer UInt32 value based on the given probability.
    #
    # This method takes an `UInt32` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 32-bit unsigned integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(32_u32) # => random value of type UInt32 based on the probability
    # ```
    def self.apply(variable : UInt32) : UInt32
      return Random.rand(0_u32..4_294_967_295_u32).to_u32
    end

    # Returns a chaotic integer UInt64 value based on the given probability.
    #
    # This method takes an `UInt64` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 64-bit unsigned integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(64_u64) # => random value of type UInt64 based on the probability
    # ```
    def self.apply(variable : UInt64) : UInt64
      return Random.rand(0_u64..18_446_744_073_709_551_615_u64).to_u64
    end

    # Returns a chaotic integer UInt128 value based on the given probability.
    #
    # This method takes an `UInt128` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 128-bit unsigned integer range.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(128_u128) # => random value of type UInt128 based on the probability
    # ```
    def self.apply(variable : UInt128) : UInt128
      return Random.rand(0_u128..340_282_366_920_938_463_463_374_607_431_768_211_455_u128).to_u128
    end

    # Returns a chaotic float Float32 value based on the given probability.
    #
    # This method takes a `Float32` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 0.0 and 1.0 on 32-bit float type.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(32.0_f32) # => random value of type Float32 based on the probability
    # ```
    def self.apply(variable : Float32) : Float32
      return Random.rand(0.0...1.0).to_f32
    end

    # Returns a chaotic float Float64 value based on the given probability.
    #
    # This method takes a `Float64` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value between 0.0 and 1.0 on 64-bit float type.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos(64.0_f64) # => random value of type Float64 based on the probability
    # ```
    def self.apply(variable : Float64) : Float64
      return Random.rand(0.0...1.0).to_f64
    end

    # Returns a chaotic char value based on the given probability.
    #
    # This method takes a `Char` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value of a valid char.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # puts chaos.chaos('a') # => random value of type Char based on the probability
    # ```
    def self.apply(variable : Char) : Char
      # Safe char interval (0..0xd7ff and 0xe000..0x10ffff)

      # interval1 = (0_u32..0xd7ff_u32)
      interval1Begin = 0_u32
      interval1Size = 55296

      # interval2 = (0xe000_u32..0x10ffff_u32)
      interval2Begin = 57344
      interval2Size = 1056768

      # Total size of the two intervals
      total_size = 1112064
      random_position = rand(0...total_size)

      # Determine which interval the random position falls into
      random_value = if random_position < interval1Size
                       interval1Begin + random_position
                     else
                       interval2Begin + (random_position - interval1Size)
                     end

      return random_value.chr
    end

    # Returns a chaotic string value based on the given probability.
    #
    # This method takes a `String` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a chaotic string based on the input `variable`.
    #
    # Example:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # chaos.chaos("abcdefghi") # => chaotic string based on the probability
    # ```
    def self.apply(variable : String) : String
      aux = variable.chars.shuffle.join
      return aux.chars.shuffle.join.each_char.map { |c| rand < Chaos.probability ? Chaos.modifier(c) : c }.join
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
    def self.apply(variable : Array) : Array
      return variable.reverse.shuffle
    end

    # Array-like

    # Hash

    # Hash-like

    # Returns a chaotic range value based on the given probability.
    #
    # This method takes a `Range` variable as input and returns the same variable unless
    # a random value generated is less than the current chaos probability, in which case
    # it returns a random value of begin and end for the range.
    #
    # Example passing a simple range:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # chaos.chaos(1..10) # => random range based on the probability
    # ```
    #
    # Example passing a range with different types:
    #
    # ```
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    # rangeBegin : Int128 = 1
    # rangeEnd : Int128 = 10
    # chaos.chaos(rangeBegin..rangeEnd) # => random range based on the probability
    # ```
    #
    # If the range have a value not handled by the method overloading,
    # it will return the same range passed as input.
    #
    # Example:
    #
    # ```
    # class Test
    #   property name : String = "TEST"
    # end
    #
    # object = Test.new
    #
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    #
    # chaos.chaos(object..object) # => object..object
    # ```
    def self.apply(variable : Range) : Range
      return apply(variable.begin)..apply(variable.end)
    end

    # Regex

    # Tuple

    # NamedTuple

    # Proc

    # Command

    # Generic unhandled type
    #
    # This method is called when the type is not handled by the method overloading.
    #
    # Returns the same variable passed as input.
    #
    # Example:
    #
    # ```
    # class Test
    #   property name : String = "TEST"
    # end
    #
    # object = Test.new
    #
    # chaos = Chaos::Chaos.new
    # chaos.probability = 0.8
    #
    # chaos.chaos(object) # => object
    # ```
    def self.apply(value)
      value
    end
  end
end
