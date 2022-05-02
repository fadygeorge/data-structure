class Stack
   attr_accessor :top, :ar, :size

   def initialize(siz)
     @top = -1
     @ar = Array.new(siz)
     @size = siz
   end

   def push(n)
     if is_full
       puts "The Stack is full.."
     else
       @top +=1
       @ar[top]=n
     end
   end

   def pop
     if is_empty
       puts "The Stack is Empty.."
     else
       @ar.delete_at(@top)
       @top -=1
     end
   end

   def is_full
     if @top == @size -1
       return true
     else
       return false
     end
   end

   def is_empty
     if @top == -1
       return true
     else
       return false
     end
   end

   def get_top
     if is_empty
       #puts "The Stack is Empty.."
       return
     else
       return @ar[@top]
     end
   end

   def print
     for i in @top.downto(0)
       puts @ar[i]
     end
   end

end


def isoperand(s)
  i = s.to_i
  a = i/2

  if i == 1
    return true
  elsif a == 0
    return false
  else
    return true
  end

end
#s.push(4)
#s.push(40)
#s.push(191)
#s.push(1234)
#s.push(13)
#s.print
#puts ""
#s.pop
#s.print
#puts "",s.get_top
s = ''
#puts isoperand("(")
