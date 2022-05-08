def binary_search_recursion(arr,k,l,r)
  m = (l+r)/2
  if l<r
    if k == arr[m]
      return m
    elsif k < arr[m]
      return binary_search(arr,k,l,m-1)
    elsif k > arr[m]
      return binary_search(arr,k,m+1,r)
    end
  end
  return -1
end

def binary_search(arr,k,l,r)
  while l<r
    m = (l+r)/2
    if k == arr[m]
      return m
    elsif k < arr[m]
      r = m-1
    elsif k > arr[m]
      l = m+1
    end
  end
  return -1
end


ar = [1,2,3,4,6]
puts binary_search(ar,5,0,4)
