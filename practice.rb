# To change this template, choose Tools | Templates
# and open the template in the editor.

a = %w{abc cde efg}
puts a[0]

if a[1] != "cde"
  puts "$a[0] value is cde"
elsif a[2] == "efg"
  puts "$a[2] value is efg"
end

count=0
while true
  count +=1
  puts count
  if count == 100
    puts "Exiting"
    return
  end
end


