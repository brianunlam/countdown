require "spec_helper"

RSpec.describe Countdown::Digits do
  describe "count" do
    context "Return number of digits when" do

      before(:all) do
        @cd = Countdown::Digits.new
      end

      it "receives a number with one digit" do
        expect(@cd.count(1)).to eq(1)
        expect(@cd.count(9)).to eq(1)
      end
      it "receives a number with two count" do
        expect(@cd.count(10)).to eq(2)
        expect(@cd.count(99)).to eq(2)
      end
      it "receives a number with three count" do
        expect(@cd.count(100)).to eq(3)
        expect(@cd.count(999)).to eq(3)
      end
    end


  end

end
