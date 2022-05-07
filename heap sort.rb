 def heapify(arr,s,i)
   l = i*2+1
   r = i*2+2
   max = i
   if l < s and arr[l] >arr[max]
     max = l
   end
   if r < s and arr[r] > arr[max] or arr[max] ==  arr[r]
     max = r
   end
   if max != i
     temp = arr[max]
     arr[max] = arr[i]
     arr[i] = temp
     heapify(arr,s,max)
   end
 end

 def build_heap(arr,s)
   j = s/2-1
   for i in j.downto(0)
     heapify(arr,s,i)
   end
 end

 def heap_s(arr,s)
   build_heap(arr,s)
   i = s-1
   while i != 1
     temp = arr[i]
     arr[i]=arr[0]
     arr[0]=temp
     heapify(arr,i,0)
     i = i-1
   end
   if arr[0]>arr[1]
     temp = arr[1]
     arr[1]=arr[0]
     arr[0]=temp
   end
 end

 def heap_sort(arr)
   heap_s(arr,arr.length)
 end


# test cases of heap sort

ar = [50,20,60,10,70,90,10,5,30,40,1]               # Time Complexity: Best, Average and Worst O(nlogn)
arr= [10,60,70,30,25,65,90]                         # Space Complexity: O(1)
#build_heap(arr,7)
#puts arr,""
#heapify(arr,7,0)
#heap_sort(arr)
#puts arr
#build_heap(ar,11)
heap_sort(ar)
puts ar
a= [1,10,9,5]
heapify(a,4,0)
#puts a
