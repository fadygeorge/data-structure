
def insertion_sort(arr)               #   0   1   2   3   4   5   6
  for i in 1..arr.length-1            # [ 8 , 9 , 6 , 3 , 5 , 7 , 4 ]
    key = arr[i]
    j = i-1
    while j >= 0 and arr[j] > key
      arr[j+1] = arr[j]               # [ 8 , 9 , 9 , 3 , 5 , 7 , 4 ]
      j = j-1                         # [ 8 , 8 , 9 , 3 , 5 , 7 , 4 ]
    end
    arr[j+1] = key                    # [ 6 , 8 , 9 , 3 , 5 , 7 , 4 ]
  end

end


# test cases of insertion sort

ar = [8,9,6,3,5,7,4]            # Time Complexity                       # Space Complexity
insertion_sort(ar)             # - Best Case: O(n)                        - O(1)
#puts ar                        # - Average and worst case : O(n2)
a = [2,3,8,5,6,7,1,4,1]
insertion_sort(a)
puts a
