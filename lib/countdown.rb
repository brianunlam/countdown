require "countdown/version"
require "countdown/digits"

module Countdown
 def self.countdown number
   number = number +1
   old_bs = bs = 0
   number.times do |i|
     j = number - i - 1
     old_bs = bs
     bs = Countdown::Digits.new.count(j)
     if old_bs != bs
       old_bs.times { print " " }
       old_bs.times { print "\r"}
     end
     print "#{j}"
     bs.times do
       print "\r"
     end
     sleep(1)
   end
 end

end #module
