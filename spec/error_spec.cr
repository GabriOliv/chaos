require "./spec_helper"

describe "Chaos Class - Error" do
  describe "chaos - error" do
    it "raises all error types" do
      Chaos.probability = 1.0
      encountered_messages = [] of String
      1000.times do
        begin
          Chaos.error
        rescue ex : Exception
          encountered_messages << "#{ex.class} - #{ex.message}" unless encountered_messages.includes?("#{ex.class} - #{ex.message}")
        end
      end
      encountered_messages.size.should eq(30)
    end
  end
end
