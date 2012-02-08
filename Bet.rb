require 'rubygems'
require 'neography'
require 'digest/sha1'

def logDebug(*inputArr)
  puts Time.now.to_s <<  "\t" << inputArr.join(",")
end

class Time
  def elapsedTimeSince(earlierTime)
    difference = self.strftime("%s").to_i - earlierTime.strftime('%s').to_i
      seconds    =  difference % 60
      difference = (difference - seconds) / 60
      minutes    =  difference % 60
      difference = (difference - minutes) / 60
      hours      =  difference % 24
      difference = (difference - hours)   / 24
      days       =  difference % 7
      weeks      = (difference - days)    /  7
      logDebug("weeks",weeks, "days",days, 'hours', hours, 'minutes', minutes, 'seconds', seconds)
  end
end


class Bet
  attr_accessor :points, :usersFor, :usersAgainst
  attr_reader :betText
  #
  def initialize(betID=nil, betText=nil)
      if(betID.nil?)
        @betID = Digest::SHA1.hexdigest Time.now.strftime('%Y-%m-%d-%H:%M:%S.%12N') + srand(1000000).to_s
      else
        @betID = betID
      end
      if(betText.nil?)
        return nil
      else
        @betText = betText
      end
  end

  def points=(points)
    @points = points * 20
  end

  def points?(points)
    return @points = points
  end

  def points
    return @points
  end



# Beloww
betID = Digest::SHA1.hexdigest Time.now.strftime('%Y-%m-%d-%H:%M:%S.%12N') + srand(1000000).to_s

b1 = Bet.new(betID,"smartBet")

betID = Digest::SHA1.hexdigest Time.now.strftime('%Y-%m-%d-%H:%M:%S.%12N') + srand(1000000).to_s

b2 = Bet.new(betID,"smartBet")

t1 = Time.now

sleep 10

t2 = Time.now

t3 = t1.elapsedTimeSince(t2)
Neography

logDebug("t3 diff", t3)