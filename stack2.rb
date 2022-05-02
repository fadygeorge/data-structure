class Node
  attr_accessor :item, :nextnode
  def initialize(i, nn)
    @nextnode = nn
    @item = i
  end
end


class Linkedstack

  attr_accessor :top
  def initialize
    @top = nil
  end

  def push(i)
    @top = Node.new(i,@top)
  end

  def is_empty
    if @top == nil
      return true
    else
      return false
    end
  end

  def pop
    if is_empty
      puts "the stack is empty.."
    else
      v = @top.item
      @top = @top.nextnode
      #v
    end
  end

  def get_top
    puts @top.item
  end

  def print
    n = @top
    if is_empty == false
      while n.nextnode != nil
        puts n.item
        n = n.nextnode
      end
      puts n.item
    else
      puts "The stack is empty.."
    end
  end

end



# test cases of linked stack
a = [0,1,2,3,4]
b = a
a << 42
#puts a,"",b
s = Linkedstack.new
#s.get_top
#s.pop
#s.get_top
s.push(100)
s.push(200)
s.push(300)
s.push(400)
s.pop
#s.print
#puts s.is_empty
