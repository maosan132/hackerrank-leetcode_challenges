#Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.
#Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.
#Follow up:
#Could you solve this problem without using the library's sort function?
#Could you come up with a one-pass algorithm using only O(1) constant space?

red, white, blue = 0, 0, 0
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
