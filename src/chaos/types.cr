module Chaos
  class Chaos
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
    def chaos(variable : Int8) : Int8
      rand < @probability ? (variable = Random.rand(-128_i8..127_i8).to_i8) : variable
    end

    # Integer int16
    def chaos(variable : Int16) : Int16
      rand < @probability ? (variable = Random.rand(-32_768_i16..32_767_i16).to_i16) : variable
    end

    # Integer int32
    def chaos(variable : Int32) : Int32
      rand < @probability ? (variable = Random.rand(-2_147_483_648_i32..2_147_483_647_i32).to_i32) : variable
    end

    # Integer int64
    def chaos(variable : Int64) : Int64
      rand < @probability ? (variable = Random.rand(-9_223_372_036_854_775_808_i64..9_223_372_036_854_775_807_i64).to_i64) : variable
    end

    # Integer int128
    def chaos(variable : Int128) : Int128
      rand < @probability ? (variable = Random.rand(-170_141_183_460_469_231_731_687_303_715_884_105_728_i128..170_141_183_460_469_231_731_687_303_715_884_105_727_i128).to_i128) : variable
    end

    # Integer uint8
    def chaos(variable : UInt8) : UInt8
      rand < @probability ? (variable = Random.rand(0_u8..255_u8).to_u8) : variable
    end

    # Integer uint16
    def chaos(variable : UInt16) : UInt16
      rand < @probability ? (variable = Random.rand(0_u16..65_535_u16).to_u16) : variable
    end

    # Integer uint32
    def chaos(variable : UInt32) : UInt32
      rand < @probability ? (variable = Random.rand(0_u32..4_294_967_295_u32).to_u32) : variable
    end

    # Integer uint64
    def chaos(variable : UInt64) : UInt64
      rand < @probability ? (variable = Random.rand(0_u64..18_446_744_073_709_551_615_u64).to_u64) : variable
    end

    # Integer uint128
    def chaos(variable : UInt128) : UInt128
      rand < @probability ? (variable = Random.rand(0_u128..340_282_366_920_938_463_463_374_607_431_768_211_455_u128).to_u128) : variable
    end

    # Float float32
    def chaos(variable : Float32) : Float32
      rand < @probability ? (variable = Random.rand(0.0...1.0).to_f32) : variable
    end

    # Float float64
    def chaos(variable : Float64) : Float64
      rand < @probability ? (variable = Random.rand(0.0...1.0).to_f64) : variable
    end

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
