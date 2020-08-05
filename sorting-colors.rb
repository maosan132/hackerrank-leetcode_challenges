def sort_colors(nums)
  red = 0
  white = 0
  blue = 0
  nums.each do |num|
     if num == 0
         red += 1
     elsif num == 1
         white += 1
     else
         blue += 1
      end
  end
  i = 0
  red.times {
      nums[i] = 0
      i += 1
  }
  white.times {
      nums[i] = 1
      i += 1
  }
  blue.times {
      nums[i] = 2
      i += 1
  }
  nums
end