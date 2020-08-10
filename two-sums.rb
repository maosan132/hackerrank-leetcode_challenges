def two_sum(nums, target)
    len = nums.length
    j = 0
    for i in 0...len
        j = nums.index(target - nums[i])
        if i != j
            return [i,j] unless j.nil?
        end
    end
    return []
end