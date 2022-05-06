def bubble_sort(arr)
  #ts = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  swap = false
  l = arr.length-2
  for j in 0..l
    for i in 0..l-j
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i]= arr[i+1]
        arr[i+1]=temp
        swap = true
      end
    end
    if swap == false
      #te = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      return
    end
  end
  #te = Process.clock_gettime(Process::CLOCK_MONOTONIC)
end


# test cases of bubble sort
ar = [10,6,2,5,3,9]           #Time Complexity: Average and Worst Case: O(n2)
a = [2,3,8,5,6,7,1,4,1]       #Best Case: O(n) when the array is already sorted
bubble_sort(ar)               # Space Complexity: O(1)
puts ar
bubble_sort(a)
bubble_sort(ar)
puts a
bubble_sort(a)
