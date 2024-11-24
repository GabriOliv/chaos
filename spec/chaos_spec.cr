require "./spec_helper"

describe Chaos do
  describe "version" do
    it "has a version number" do
      Chaos::VERSION.should_not be_nil
    end
  end

  describe "property - probability" do
    it "initializes with default probability" do
      chaos = Chaos::Chaos.new
      chaos.probability.should eq(0.5)
    end

    it "changes the probability" do
      chaos = Chaos::Chaos.new
      chaos.probability = 0.8
      chaos.probability.should eq(0.8)
    end

    it "raises an error if the probability is higher than range" do
      chaos = Chaos::Chaos.new
      expect_raises(ArgumentError) do
        chaos.probability = 1.1
      end
    end

    it "raises an error if the probability is lower than range" do
      chaos = Chaos::Chaos.new
      expect_raises(ArgumentError) do
        chaos.probability = -0.1
      end
    end

    it "resets the probability to default" do
      chaos = Chaos::Chaos.new
      chaos.probability = 0.8
      chaos.reset_probability
      chaos.probability.should eq(0.5)
    end
  end
end
