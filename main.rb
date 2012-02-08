# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'rubygems'
require 'neography'
puts "Hello World"

class User
  def initialize
    @neo = Neography::Rest.new("s2.symy.tv", 7474)
    @neo.create
  end
end
