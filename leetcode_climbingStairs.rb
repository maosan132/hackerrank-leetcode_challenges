#You are climbing a staircase. It takes n steps to reach the top.
#Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
#https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    first = 0
    second = 1
    counter = 1
    n.times do
        second = counter
        counter = second + first
        first = second
    end
    counter
end
