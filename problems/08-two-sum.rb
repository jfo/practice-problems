# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums, i = 0)
    if nums.empty?
        return nil
    elsif nums.include?(-nums.first)
        i2 = 0
        i2 +=1 until nums[i2] == -nums.first
        return [i, i+i2]
    else
        two_sum(nums[1..-1], i+1)
    end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
