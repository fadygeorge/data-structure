# Language: Ruby, Level: Level 3
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

def precedence(s)
  if s == '+' or s == '-'
    return 1
  elsif s == '*' or s == '/'
    return 2
  else
    return 3
  end

end

def infix_to_postfix(exp)
  s =""
  st = Stack.new(exp.length)
  for i in 0..exp.length-1
    if isoperand(exp[i])
      s = s+exp[i]
    else
      if exp[i] == '(' or st.is_empty
        st.push(exp[i])
        #puts st.get_top
      elsif exp[i] == ')'
        while st.get_top != '('
          #puts s,st.get_top
          s +=st.get_top
          st.pop
        end
        st.pop
      else

        while (st.is_empty == false and st.get_top != '(' and precedence(exp[i]) <= precedence(st.get_top))
          s +=st.get_top
          st.pop
        end
        st.push(exp[i])
      end
    end
  end

  while st.is_empty == false
    s +=st.get_top
    st.pop
  end
  #puts exp
  #puts s
  return s



end

#puts precedence('')
infix_to_postfix("2+((8+2*3)/2)-1")
