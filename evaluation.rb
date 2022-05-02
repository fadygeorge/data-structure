
require_relative("infix to postfix.rb")
require_relative("evaluation of postfix.rb")

def eva(exp)

  evaluation(infix_to_postfix(exp))



end

puts eva("")
