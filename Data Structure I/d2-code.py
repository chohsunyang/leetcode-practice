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
        i1 = m - 1
        i2 = n - 1
        j = n + m - 1
        
        # merge in reverse order
        while j >= 0:
            if i2 >= 0 and (m == 0 or nums2[i2] >= nums1[i1]):
                nums1[j] = nums2[i2]
                i2 -= 1
            elif i2 > -1 and nums1[i1] > nums2[i2]:
                nums1[j], nums1[i1] = nums1[i1], nums1[j]
                if i1: i1 -= 1            
            j -= 1

        if i2 > -1:
            for i in range(i2 + 1):
                nums1[i] = nums2[i]
