require "./spec_helper"

describe Chaos do
  # chaos return with Nil
  it "chaos - nil: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.chaos(nil).should eq(nil)
  end

  # chaos return with Bool
  it "chaos - bool: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(true).should be_true
  end

  it "chaos - bool: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(true).should be_false
  end

  # chaos return with Integer int8
  it "chaos - int8: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(8_i8).should eq(8_i8)
  end

  it "chaos - int8: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(8_i8).should_not eq(8_i8)
  end

  # chaos return with Integer int16
  it "chaos - int16: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(16_i16).should eq(16_i16)
  end

  it "chaos - int16: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(16_i16).should_not eq(16_i16)
  end

  # chaos return with Integer int32
  it "chaos - int32: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(32_i32).should eq(32_i32)
  end

  it "chaos - int32: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(32_i32).should_not eq(32_i32)
  end

  # chaos return with Integer int64
  it "chaos - int64: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(64_i64).should eq(64_i64)
  end

  it "chaos - int64: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(64_i64).should_not eq(64_i64)
  end

  # chaos return with Integer int128
  it "chaos - int128: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(128_i128).should eq(128_i128)
  end

  it "chaos - int128: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(128_i128).should_not eq(128_i128)
  end

  # chaos return with Integer uint8
  it "chaos - uint8: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(8_u8).should eq(8_u8)
  end

  it "chaos - uint8: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(8_u8).should_not eq(8_u8)
  end

  # chaos return with Integer uint16
  it "chaos - uint16: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(16_u16).should eq(16_u16)
  end

  it "chaos - uint16: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(16_u16).should_not eq(16_u16)
  end

  # chaos return with Integer uint32
  it "chaos - uint32: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(32_u32).should eq(32_u32)
  end

  it "chaos - uint32: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(32_u32).should_not eq(32_u32)
  end

  # chaos return with Integer uint64
  it "chaos - uint64: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(64_u64).should eq(64_u64)
  end

  it "chaos - uint64: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(64_u64).should_not eq(64_u64)
  end

  # chaos return with Integer uint128
  it "chaos - uint128: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(128_u128).should eq(128_u128)
  end

  it "chaos - uint128: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(128_u128).should_not eq(128_u128)
  end

  # chaos return with Float float32
  it "chaos - float32: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(32.0_f32).should eq(32.0_f32)
  end

  it "chaos - float32: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(32.0_f32).should_not eq(32.0_f32)
  end

  # chaos return with Float float64
  it "chaos - float64: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos(64.0_f64).should eq(64.0_f64)
  end

  it "chaos - float64: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos(64.0_f64).should_not eq(64.0_f64)
  end

  # chaos return with Char

  # chaos return with String
  it "chaos - string: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos("abcdefghi").should eq("abcdefghi")
  end

  it "chaos - string: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos("abcdefghi").should_not eq("abcdefghi")
  end

  it "chaos - string: returns a chaotic value keeping integrity" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    result = chaos.chaos("abcdefghi")
    result.chars.sort.join.should eq("abcdefghi")
  end

  # chaos return with Symbol

  # chaos return with Array
  it "chaos - array: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 0.0
    chaos.chaos([1, 2, 3, 4, 5]).should eq([1, 2, 3, 4, 5])
  end

  it "chaos - array: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    chaos.chaos([1, 2, 3, 4, 5]).should_not eq([1, 2, 3, 4, 5])
  end

  it "chaos - array: returns a chaotic value keeping integrity" do
    chaos = Chaos::Chaos.new
    chaos.probability = 1.0
    result = chaos.chaos([1, 2, 3, 4, 5])
    result.sort.should eq([1, 2, 3, 4, 5])
  end

  # chaos return with Array-like
  # chaos return with Hash
  # chaos return with Hash-like
  # chaos return with Range
  # chaos return with Regex
  # chaos return with Tuple
  # chaos return with NamedTuple
  # chaos return with Proc
  # chaos return with Command

end
