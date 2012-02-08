
require 'rubygems'
require 'neography'
require './qqqq/NeoAdapter.rb'
class DataController
  include NeoAdapter

  def initialize()
createUserNode("thaniga3")
searchUserNode("username","thaniga3")
#index = getUserNodeIndex("thaniga2")
puts getUserNodeByIndex(index).nil?

  end

  def getUser(username)

  end

  # How to
  def getBetByCaption(betCaption)

  end

  def getBetsByUser(username)

  end

  def getBetByUser(username)

  end

  def isAuthor(betObj, userObj)
    
  end



end

dc = DataController.new