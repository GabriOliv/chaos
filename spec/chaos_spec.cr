require "./spec_helper"

describe Chaos do
  describe "version" do
    it "has a version number" do
      Chaos::VERSION.should_not be_nil
    end
  end

  describe "Chaos Class - Attributes" do
    describe "Probability" do
      # Disabled this test because probability is managed by a singleton class
      #   it "initializes with default probability" do
      #     Chaos.probability.should eq(0.5)
      #   end

      it "changes the probability" do
        Chaos.probability = 0.8
        Chaos.probability.should eq(0.8)
      end

      it "raises an error if the probability is higher than range" do
        expect_raises(ArgumentError) do
          Chaos.probability = 1.1
        end
      end

      it "raises an error if the probability is lower than range" do
        expect_raises(ArgumentError) do
          Chaos.probability = -0.1
        end
      end

      it "resets the probability to default" do
        Chaos.probability = 0.8
        Chaos.reset_probability
        Chaos.probability.should eq(0.5)
      end
    end
  end
end
