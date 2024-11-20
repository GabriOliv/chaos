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
  it "returns a random value of type nil" do
    chaos = Chaos::Chaos.new
    chaos.chaos(nil).should eq(nil)
  end

  # chaos return with Bool
  it "returns a correct value of type bool" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.0)
    chaos.chaos(true).should be_true
  end

  it "returns a chaos value of type bool" do
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
  it "returns a correct value of type string" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(0.0)
    chaos.chaos("abcdefghi").should eq("abcdefghi")
  end

  it "returns a chaos value of type string" do
    chaos = Chaos::Chaos.new
    chaos.set_probability(1.0)
    chaos.chaos("abcdefghi").should eq("ihgfedcba")
  end

  # chaos return with Symbol
  # chaos return with Array
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
