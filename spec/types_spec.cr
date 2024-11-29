require "./spec_helper"

class TestingRange
  property name : String = "TEST"
end

describe "Chaos Class - Types Method Overloading" do
  describe "chaos - nil" do
    it "returns a correct value" do
      Chaos.modifier(nil).should eq(nil)
    end
  end

  describe "chaos - bool" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(true).should be_true
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(true).should be_false
    end
  end

  describe "chaos - int8" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(8_i8).should eq(8_i8)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(8_i8).should_not eq(8_i8)
    end
  end

  describe "chaos - int16" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(16_i16).should eq(16_i16)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(16_i16).should_not eq(16_i16)
    end
  end

  describe "chaos - int32" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(32_i32).should eq(32_i32)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(32_i32).should_not eq(32_i32)
    end
  end

  describe "chaos - int64" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(64_i64).should eq(64_i64)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(64_i64).should_not eq(64_i64)
    end
  end

  describe "chaos - int128" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(128_i128).should eq(128_i128)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(128_i128).should_not eq(128_i128)
    end
  end

  describe "chaos - uint8" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(8_u8).should eq(8_u8)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(8_u8).should_not eq(8_u8)
    end
  end

  describe "chaos - uint16" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(16_u16).should eq(16_u16)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(16_u16).should_not eq(16_u16)
    end
  end

  describe "chaos - uint32" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(32_u32).should eq(32_u32)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(32_u32).should_not eq(32_u32)
    end
  end

  describe "chaos - uint64" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(64_u64).should eq(64_u64)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(64_u64).should_not eq(64_u64)
    end
  end

  describe "chaos - uint128" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(128_u128).should eq(128_u128)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(128_u128).should_not eq(128_u128)
    end
  end

  describe "chaos - float32" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(32.0_f32).should eq(32.0_f32)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(32.0_f32).should_not eq(32.0_f32)
    end
  end

  describe "chaos - float64" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier(64.0_f64).should eq(64.0_f64)
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier(64.0_f64).should_not eq(64.0_f64)
    end
  end

  describe "chaos - char" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier('a').should eq('a')
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier('a').should_not eq('a')
    end
  end

  describe "chaos - string" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier("abcdefghi").should eq("abcdefghi")
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier("abcdefghi").should_not eq("abcdefghi")
    end
  end

  # chaos return with Symbol

  describe "chaos - array" do
    it "returns a correct value" do
      Chaos.probability = 0.0
      Chaos.modifier([1, 2, 3, 4, 5]).should eq([1, 2, 3, 4, 5])
    end

    it "returns a chaotic value" do
      Chaos.probability = 1.0
      Chaos.modifier([1, 2, 3, 4, 5]).should_not eq([1, 2, 3, 4, 5])
    end

    it "returns a chaotic value keeping integrity" do
      Chaos.probability = 1.0
      result = Chaos.modifier([1, 2, 3, 4, 5])
      result.sort.should eq([1, 2, 3, 4, 5])
    end
  end

  # chaos return with Array-like
  # chaos return with Hash
  # chaos return with Hash-like

  describe "chaos - range" do
    it "returns a correct value on default range" do
      Chaos.probability = 0.0
      Chaos.modifier(1..100).should eq(1..100)
    end

    it "returns a chaotic value on numeric range" do
      Chaos.probability = 1.0
      Chaos.modifier(1_u128..10_u128).begin.should_not eq(1_u128)
    end

    it "returns a chaotic value on char range" do
      Chaos.probability = 1.0
      Chaos.modifier("a".."z").begin.should_not eq("a")
    end

    it "returns same range when value is not handled" do
      Chaos.probability = 1.0
      newObject = TestingRange.new
      Chaos.modifier(newObject..newObject).should eq(newObject..newObject)
    end

    it "returns a chaotic value on char range" do
      Chaos.probability = 1.0

      Chaos.modifier("a".."z").begin.should_not eq("a")
      Chaos.modifier("a".."z").end.should_not eq("z")
    end
  end

  # chaos return with Regex
  # chaos return with Tuple
  # chaos return with NamedTuple
  # chaos return with Proc
  # chaos return with Command

  describe "chaos - unhandled type" do
    it "returns the same value" do
      Chaos.probability = 0.0
      newObject = TestingRange.new
      Chaos.modifier(newObject).should eq(newObject)
    end
  end
end
