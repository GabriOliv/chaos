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

    it "resets the probability to default" do
      chaos = Chaos::Chaos.new
      chaos.probability = 0.8
      chaos.reset_probability
      chaos.probability.should eq(0.5)
    end
  end
end
