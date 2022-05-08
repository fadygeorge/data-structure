def linear_search(arr,k)
  n = arr.length
  for i in 0..n-1
    if arr[i] == k
      return i
    end
  end
  return -1
end

arr = [90,10,40,70,5]                   #time Complexity:Best case: O(1), worst and average: O(n)
puts linear_search(arr,7)               #space Complexity: O(1)
