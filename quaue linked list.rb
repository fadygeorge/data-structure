require_relative("stack2.rb")

class Linked_queue

  attr_accessor :front, :rear, :length

  def initialize()
    @front = nil
    @rear = nil
    @length = 0
  end

  def is_empty
    if @front == nil and @rear == nil
      return true
    else
      return false
    end
  end

  def enqueue(e)
    if @front == nil and @rear == nil
      n = Node.new(e,nil)
      @front = @rear = n
    else
      d = Node.new(e,@rear)
      @rear = d
    end
    @length +=1

  end

  def dequeue
    if is_empty
      puts "The queue is empty.."
    else
      e = @rear
      for i in 0..@length-3
        e = e.nextnode
      end
      w = e.nextnode.item
      e.nextnode =nil
    end
    @length -=1
    return w
  end

  def print_queue
    if is_empty
      puts "the queue is empty.."
    else
      i=@rear
      while i.nextnode != nil
        puts i.item
        i = i.nextnode
      end
      puts i.item
    end
  end

  def length
    if is_empty
      puts "the queue is empty.."
    else
      puts @length
    end
  end

end

# test cases of linked queue

lq = Linked_queue.new
lqq = Linked_queue.new
lqq.dequeue
lqq.enqueue(1)
lqq.print_queue

lq.enqueue(1)
lq.enqueue(2)
lq.enqueue(3)
lq.enqueue(4)
lq.enqueue(5)
lq.print_queue

puts "",lq.dequeue
puts lq.dequeue
puts lq.dequeue
puts lq.length

#lq.length
lq.print_queue
