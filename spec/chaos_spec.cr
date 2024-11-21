require "./spec_helper"

describe Chaos do
  it "has a version number" do
    Chaos::VERSION.should_not be_nil
  end

  it "initializes with default probability" do
    chaos = Chaos::Chaos.new
    chaos.probability.should eq(0.5)
  end

  it "changes the probability" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.8)
    chaos.probability.should eq(0.8)
  end

  it "resets the probability to default" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.8)
    chaos.reset_probability
    chaos.probability.should eq(0.5)
  end

  # chaos return with Nil
  it "chaos - nil: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.chaos(nil).should eq(nil)
  end

  # chaos return with Bool
  it "chaos - bool: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.0)
    chaos.chaos(true).should be_true
  end

  it "chaos - bool: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(1.0)
    chaos.chaos(true).should be_false
  end

  # chaos return with Integer int8
  # chaos return with Integer int16
  # chaos return with Integer int32
  # chaos return with Integer int64
  # chaos return with Integer int128
  # chaos return with Integer uint8
  # chaos return with Integer uint16
  # chaos return with Integer uint32
  # chaos return with Integer uint64
  # chaos return with Integer uint128
  # chaos return with Float float32
  # chaos return with Float float64
  # chaos return with Char

  # chaos return with String
  it "chaos - string: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.0)
    chaos.chaos("abcdefghi").should eq("abcdefghi")
  end

  it "chaos - string: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(1.0)
    chaos.chaos("abcdefghi").should_not eq("abcdefghi")
  end

  it "chaos - string: returns a chaotic value keeping integrity" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(1.0)
    result = chaos.chaos("abcdefghi")
    result.chars.sort.join.should eq("abcdefghi")
  end

  # chaos return with Symbol

  # chaos return with Array
  it "chaos - array: returns a correct value" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.0)
    chaos.chaos([1, 2, 3, 4, 5]).should eq([1, 2, 3, 4, 5])
  end

  it "chaos - array: returns a chaotic value" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(1.0)
    chaos.chaos([1, 2, 3, 4, 5]).should_not eq([1, 2, 3, 4, 5])
  end

  it "chaos - array: returns a chaotic value keeping integrity" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(1.0)
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
