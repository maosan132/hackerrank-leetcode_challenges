require 'colorize'

n = 10


puts '-' * 40 + "\n" + '      MY EVEN FIBONACCI SOLUTION'.yellow + "\n" + '-' * 40

# starting from 1, get a new term by adding last two terms until the number requested.
# a+b=c => c+b = c
a = [0,1]
while true
print a[-1] + a[-2] > n ? break : a << a[-1] + a[-2]
puts
end
puts x = a.inject {|mem, i| i.even? ? mem + i : mem}


# a = [0,1]
# nn.each do |n|
#   while true
#   break if a[-1] + a[-2] > n
#   puts a << a[-1] + a[-2] # a = [0,1,1] , a = [0,1,1,2] ...=> a = [0,1,1,2,3,5,8,13,21,34,55,89,144...]
#   end
#   puts "***" * 5
#   puts x = a.inject {|mem, i| mem.even? && i.even? ? mem + i : mem}
#   puts "***" * 5
# end


