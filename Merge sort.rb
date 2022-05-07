def merge(arr,l,m,r)
  a = m-l +1
  b = r -m
  arr1 = arr[l,a]
  arr2 = arr[m+1,b]
  arr3 = []
  n1 = arr1.length
  n2 = arr2.length
  i = j = k = 0
  while i != n1 and j != n2
    if arr1[i] <= arr2[j]
      arr3[k] = arr1[i]
      i +=1
      k +=1
    else
      arr3[k] = arr2[j]
      j +=1
      k +=1
    end
  end

  if i == n1
    while j < n2
      arr3[k] = arr2[j]
      k+=1
      j+=1
    end
  else
    while i < n1
      arr3[k] = arr1[i]
      k+=1
      i+=1
    end
  end
  c = r-l +1
  arr[l,c] = arr3                                                              # Time Complexity: O(n)
end

def merge_s(arr,l,r)                              # Time Complexity: Best, average and worst case: O(nlogn)
  if l<r                                             # Space Complexity: O(n)
    m = l+(r-l)/2
    merge_s(arr,l,m)
    merge_s(arr,m+1,r)
    merge(arr,l,m,r)
  end
end

def merge_sort(arr)
  merge_s(arr,0,arr.length-1)
end


# Test cases for Merge sort
arr1 = [1,4,6,8]
arr2 = [2,3,7,9]
arr = [3,7,2,4,5,1,9]
a = [50,20,60,10,70,90,10,5,30,40,2,1,5]
#arr3 = merge(a,0,0,1)
#puts arr3
merge_sort(a)
puts a
