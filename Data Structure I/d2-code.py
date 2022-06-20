# 1. Two Sum
class Solution:
   def twoSum(self, nums: List[int], target: int) -> List[int]: #can hint type
    hash_table = {} #start with empty, val: index
    
    for i, n in enumerate(nums):
        diff = target - n
        if diff in hash_table:
            return [hash_table[diff], i]
        hash_table[n] = i #add new hash to table
    return    
 
# 88. Merge Sorted Array
class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        # last index nums1
        last = m + m - 1
        
        # merge in reverse order
        while m > 0 and n > 0:
            if nums1[m - 1] > nums2[n - 1]:
                nums1[last] = nums1[m - 1]
                m -= 1
            else:
                nums1[last] = nums2[n - 1]
                n -= 1
            last -= 1    
        # fill nums1 with leftover nums2 elemets
        while n > 0:
            nums1[last] = nums2[n - 1]
            n, last = n - 1, last - 1
        
