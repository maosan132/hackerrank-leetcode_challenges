require 'colorize'
# s = %w(aaabbb 
#         ab
#         abc
#         mnop
#         xyyx
#         xaxbbbxx)
puts "----" * 10 + "\n" + "         MY ANAGRAMS SOLUTION".yellow + "\n" + "----" * 10 
# def delete_even_item(d)
#   s.delete_at(d)
#   ret = -1
# end

s = 'aaaad'
mod = 0
puts "string: #{s}"
if s.size.odd?
  puts mod = -1
  puts "retorna #{mod}"
else  
  puts "string_1 " + string_1 = s[0...-(s.size / 2)]
  puts "string_2 " + string_2 = s.gsub(string_1, '')
  string_1.each_char do |c|
    if string_2.include?(c)
      puts "yes"
      string_1.sub!(c, '')
      string_2.sub!(c, '')
      puts "-=>" + string_1 + " final length: #{string_1.size}"
    else
      print "no "
      puts mod += 1
    end
  end
  puts "retorna #{mod}"
end

# counter = 0

# s.each do |string|
#   puts "----" * 10
#   mod = 0
#   if s[counter].size.odd?
#     puts mod = -1
#   else  
#     print "#{string} is even! "
#     puts "and string size es #{string.size}"
#     print mid = string.size/2
#     puts string_1 = string[0...-mid]
#     puts string_2 = string.gsub(string_1, '')
#     string_1.each_char do |c|
      
#       if string_2.include?(c)
#         puts "yes"
#         string_1.sub!(c, '')
#         puts "-=>" + string_1 + " final length: #{string_1.size}"  
#       else
#         print "no "
#         mod += 1
#         puts mod
#       end
#     end
#   end

#   break if s[counter].size + 1 == counter
#   counter += 1

# end
