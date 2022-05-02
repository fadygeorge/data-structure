class Queue
  attr_accessor :front, :rear, :arr, :size

  def initialize(sizee)
    @front = -1
    @rear = -1
    @arr = Array.new(sizee)
    @size = sizee
  end

  def enqueue(i)
    if is_full
      puts "The Queue is Full.."
    elsif is_empty
      @arr[0] = i
      @front +=1
      @rear +=1
    else
      @rear +=1
      @arr[@rear] = i
    end
  end

  def is_full
    if @rear+1 == @size
      return true
    else
      return false
    end
  end

  def is_empty
    if @front == -1 and @rear == -1
      return true
    else
      return false
    end
  end

  def dequeue
    if is_empty
      puts "The Queue is Empty.."
    else
      d = @arr[@front]
      @arr.shift
      @rear -=1
      return d
    end
  end

  def print_queue
    for i in 0..@rear
      puts @arr[i]
    end
  end

end

class Queue_circle
  attr_accessor :front, :rear, :arr, :size, :n

  def initialize(sizee)
    @front = -1
    @rear = -1
    @arr = Array.new(sizee)
    @size = sizee
    @n = 0
  end

  def enqueue(i)
    if is_full
      puts "The Queue is Full.."
    elsif is_empty
      @arr[0] = i
      @front +=1
      @rear +=1
      @n +=1
    else
      @rear = (@rear+1)%(@size)
      @arr[@rear] = i
      @n +=1
    end
  end

  def is_full
    if @n == @size
      return true
    else
      return false
    end
  end

  def is_empty
    if n == 0
      return true
    else
      return false
    end
  end

  def dequeue
    if is_empty
      puts "The Queue is Empty.."
    else
      d = @arr[@front]
      @front = (@front+1)%(@size)
      @n -=1
      return d
    end
  end

  def print_queue
    i = @front
    while i != @rear
      puts @arr[i]
      i = (i+1)%(@size)
    end
    puts @arr[@rear]
  end

  def search(e)
    i = @front
    if is_empty != true
      while i != @rear
        if e == @arr[i]
          puts i
          return
        end
        i = (i+1)%(@size)
      end
      if e == @arr[@rear]
        puts @rear
        return
      else
        puts "not found"
        return
      end
    else
      puts "The queue is empty.."
    end
  end

end


# test cases of normal queue array
q = Queue.new(5)
#puts q.is_empty,q.is_full
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
q.enqueue(4)
#q.print_queue
q.dequeue
#q.print_queue
q.enqueue(4)
q.enqueue(4)
#q.enqueue(4)
q.dequeue
q.enqueue(5)
#q.print_queue

# test cases of circular array queue
qc = Queue_circle.new(5)
qc.enqueue(1)
qc.enqueue(2)
qc.enqueue(3)
qc.print_queue
puts ""
qc.enqueue(4)
qc.enqueue(5)
qc.enqueue(6)
puts ""

qc.print_queue
puts ""

qc.dequeue
qc.print_queue
qc.search(5)
qc.search(1)
qc.enqueue(8)
qc.search(8)
