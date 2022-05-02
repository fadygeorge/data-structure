# Language: Ruby, Level: Level 3
#require 'stack'
require_relative "stack.rb"

def arepair(a,b)
  if a == '(' and b == ')'
    return true
  elsif a == '[' and b == ']'
    return true
  elsif a == '{' and b == '}'
    return true
  else
    return false
  end
end

def are_balanced(exp) # ([({})])   s
  s = Stack.new(exp.length)
  for i in 0..exp.length-1
    if exp[i] == '(' or exp[i] == '{' or exp[i] == '['
      s.push(exp[i])
    elsif exp[i] == ')' or exp[i] == '}' or exp[i] == ']'
      if arepair(s.get_top,exp[i])
          s.pop
      else
        puts "not balanced"
        return
      end
    end

  end
  puts "the exp is balanced..yaaaay"
end

s = Stack.new(4)
are_balanced("{9*5*(5+2))")
