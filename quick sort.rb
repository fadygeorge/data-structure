def partition(arr,b,e)
    i = b+1
    pivloc = b
    j = e
    while i<=j
      if pivloc < j
        if arr[pivloc] > arr[j]
          temp = arr[j]
          arr[j]= arr[pivloc]
          arr[pivloc]= temp
          pivloc = j
          j = j-1
        else
          j = j-1
        end

      elsif pivloc > i
        if arr[pivloc] < arr[i]
          temp = arr[i]
          arr[i]= arr[pivloc]
          arr[pivloc]= temp
          pivloc = i
          i = i+1
        else
          i = i+1
        end

      end

    end
    return pivloc
end

def quicksort_h(arr,l,h)
  if l<h
    piv = partition(arr,l,h)
    quicksort_h(arr,l,piv-1)
    quicksort_h(arr,piv+1,h)
  end
end

def quicksort(arr)
  quicksort_h(arr,0,arr.length-1)
end

# test cases of Quick sort
ar = [50,20,60,10,70,90,10,5,30,40,1]               # Time Complexity: Best, Average and Worst O(nlogn)
a = [50,10]                                         # Space Complexity: O(1)
arr = [50,20,10,60,70,30,25,65,90]
#partition(ar,0,9)
quicksort(ar)
#puts partition(arr,0,4)
puts ar
