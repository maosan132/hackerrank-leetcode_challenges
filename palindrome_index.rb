require 'colorize'

s = %w(aaab
aab
aaa
eaxdixae)

puts "----" * 10 + "\n" + "        MY PALIDROME SOLUTION".yellow + "\n" + "----" * 10 
s.each do |i|
  puts "Entering string = #{i.upcase}".red
  if i == i.reverse
    puts "is a palindrome" 
    puts num = -1
  else
    puts "not a palindrome"
    steps = i.size.even? ? i.size/2 : (i.size/2)-1
    count_deletions = 0
    steps.times do
      if i[0] != i[-1]
        puts "first and last chars are diferent!"
        i[0] = i[-1] # optional, not necessary make changes
        puts "before break"
      else
        i = i[1...-1]
        puts "count_deletions = #{count_deletions += 1}"
      end
      puts count_deletions
      break if count_deletions > 0
    end
  end
  puts "----" * 10 
end      

  # i.each_char do |c|  
  # i[0] == c ? j :.
  # end
  # j = i.sub(c, '')
  # puts j
  # j == j.reverse ? counter : next

  # if


#   "ruby.useBundler": true, //run non-lint commands with bundle exec
# "ruby.useLanguageServer": true, // use the internal language server (see below)
# "ruby.lint": {
#   "rubocop": {
#     "useBundler": true // enable rubocop via bundler
#   },
#   "reek": {
#     "useBundler": true // enable reek via bundler
#   }
# },
# "ruby.format": "rubocop" // use rubocop for formatting
