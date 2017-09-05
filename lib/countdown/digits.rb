module Countdown
  class Digits
    def initialize(args={})
      #@regex = args[:regex]
      #@field = args[:field]
    end

    def count number
      dig = 1
      div = 10
      while (number / div >= 1)
        div = div * 10
        dig = dig + 1
      end
      dig
    end

  end # digit class
end #module
