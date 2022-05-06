def selection_sort(arr)
  for i in 0..arr.length-2
    min = arr[i]
    index = 0
    flag = 0
    for j in i+1..arr.length-1
      if arr[j] < min
        min = arr[j]
        index = j
        flag = 1
      end
    end
    if flag == 1
      temp = arr[i]
      arr[i] = min
      arr[index] = temp
    end
  end
end


# test cases of selection sort          Time Complexity: Average case: O(n2)
ar = [2,3,8,5,6,7,1,4,1]               #-worst case: O(n2)
selection_sort(ar)                    # Space Complexity: O(1)
puts ar
