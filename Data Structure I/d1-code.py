# 217. Contains Duplicate
class Solution(object):
    def containsDuplicate(self, nums):
        numSet = list(set(nums)) # Sets cannot have two items with the same value.
        return not (len(numSet) == len(nums))
      
# 53. Maximum Subarray - Kadane's Algorithm     
class Solution:
    def maxSubArray(self, A):
        if not A:
            return 0

        curSum = maxSum = A[0]
        for num in A[1:]:
            curSum = max(num, curSum + num)
            maxSum = max(maxSum, curSum)

        return maxSum
