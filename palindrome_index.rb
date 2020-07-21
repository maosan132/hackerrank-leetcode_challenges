require 'colorize'

s = 'aaab'

puts '-' * 40 + "\n" + '      MY PALIDROME INDEX SOLUTION'.yellow + "\n" + '-' * 40

def is_a_palindrome?(s)
  s == s.reverse
end
def same_ends?(s)
  s[0] == s[-1]
end
def delete_ends(s)
  s[1...-1]
end
if is_a_palindrome?(s)
  -1
else
  size = s.size
  steps = size.even? ? size / 2 : (size / 2) - 1
  count_deletions = 0
  steps.times do
    if s[0] != s[-1]
      break
    else
      s = s[1...-1]
      count_deletions += 1
    end
  end
  count_deletions
end

puts '-' * 40

# s = %w(aaba
# aab
# aaa
# eaxdixae)

# puts '----' * 10 + '\n' + '      MY PALIDROME INDEX SOLUTION'.yellow + '\n' + '----' * 10
# s.each do |i|
#   puts "Entering string = #{i.upcase}".red
#   if i == i.reverse
#     puts 'is a palindrome'
#     num = -1
#     puts "returns: #{num}".yellow
#   else
#     size = i.size
#     puts "steps: #{steps = size.even? ? size / 2 : (size / 2) - 1}"
#     count_deletions = 0
#     steps.times do
#       if i[0] != i[-1]
#         puts 'first and last chars are diferent!, lets equal those!'
#         i[0] = i[-1] # optional, not necessary make changes
#         break
#       else
#         i = i[1...-1]
#         puts "count_deletions = #{count_deletions += 1}"
#       end
#     end
#     puts "returns index: #{count_deletions}".yellow
#   end
#   puts '----' * 10
# end