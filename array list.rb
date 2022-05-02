class Array_list
  attr_accessor :arr, :maxsize, :size

  def initialize(size)
    if size <= 0
      @arr = Array.new(100)
      @maxsize = 100
      @size = 0
    else
      @arr = Array.new(size)
      @maxsize = size
      @size = 0
    end
  end

  def is_empty
    return @size == 0
  end

  def is_full
    return @size == @maxsize
  end

  def size
    return @size
  end

  def maxsize
    return @maxsize
  end

  def print
    for i in 0..@size-1
      puts @arr[i]
    end
  end

  def insert_at(l,i)
    if is_full
      puts "The list is full.."
    else
      a = @size
      while a != l
        @arr[a] = @arr[a-1]
        a -=1
      end
      @arr[l] = i
      @size +=1
    end
  end

  def update_at(l,e)
    @arr[l]= e
  end

  def search(e)
    if is_empty
      puts "the list is empty.."
    else
      for i in 0..@size-1
        if @arr[i] == e
          return i
        end
      end
      return -1
    end
  end

  def insert_end(e)
    if is_full
      puts "The list is full.."
    else
      @arr[@size] = e
      @size +=1
    end
  end

  def duplicate(e)
    if is_empty
      puts "The list is empty.."
    else
      flag = search(e)
      if flag == -1
        insert_end(e)
      else
        puts "Duplicates are not allowed.."
      end
    end
  end

  def replace_at(l,i)
    @arr[l]=i
  end

  def retrive_at(l)
    return @arr[l]
  end

  def remove_at(l)
    a = l
    while a != @size
      @arr[a] = @arr[a+1]
      a +=1
    end
    @size -=1
  end

  def remove(i)
    flag = search(i)
    if flag == -1
      puts "the item is not in the list.."
    else
      remove_at(flag)
    end
  end

  def clear
    @arr = []
    @size = 0
    @maxsize = 100
  end
end

# test cases for array list
a = Array_list.new(50)
puts a.is_empty
puts a.is_full
puts a.size
puts a.maxsize,""
a.insert_end(1)
a.insert_end(2)
a.insert_end(3)
a.insert_end(4)
a.insert_end(5)
a.insert_end(6)
a.print
puts ""
a.insert_at(3,7)
a.print
puts ""
puts a.search(9)
puts ""
a.remove(7)
a.print
puts ""
a.update_at(3,7)
a.print
puts ""
a.clear
a.print
