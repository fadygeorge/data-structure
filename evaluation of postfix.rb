require_relative "stack.rb"

def isoperator(s)

  if (s == '(' or s == ')' or s == '-' or s == '*' or s == '+' or s == '/')
    return true
  else
    return false
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

def evaluation(exp)
  s = Stack.new(exp.length)
  for i in 0..exp.length-1
    if isoperand(exp[i])
      s.push(exp[i])
    elsif isoperator(exp[i])
      case exp[i]
      when "+"
        a = s.get_top.to_i
        s.pop
        b = s.get_top.to_i
        s.pop
        c = a + b
        s.push(c)
      when "-"
        a = s.get_top.to_i
        s.pop
        b = s.get_top.to_i
        s.pop
        c = b - a
        s.push(c)
      when "*"
        a = s.get_top.to_i
        s.pop
        b = s.get_top.to_i
        s.pop
        c = b*a
        s.push(c)
      when "/"
        a = s.get_top.to_i
        s.pop
        b = s.get_top.to_i
        s.pop
        c = b/a
        s.push(c)
      when "%"
        a = s.get_top.to_i
        s.pop
        b = s.get_top.to_i
        s.pop
        c = b%a
        s.push(c)
      else
        puts "invalid entry"
      end
    end

  end

  #puts s.get_top
  return s.get_top
end

#evaluation("55/2+19*-")
