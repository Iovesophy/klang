require "minruby"
def expression(tree)
	if tree[0] == "lit"
		tree[1]
	else
		if tree[0] == "+"
			left  = expression(tree[1])
			right = expression(tree[2])
			left + right
		else
			left  = expression(tree[1])
			right = expression(tree[2])
			left * right
		end
	end
end
def neo_expression(tree)
	case tree[0]
	when "lit"
		tree[1]
	when "+"
		left  = neo_expression(tree[1])
		right = neo_expression(tree[2])
		left + right
	when "-"
		left  = neo_expression(tree[1])
		right = neo_expression(tree[2])
		left - right
	when "*"
		left  = neo_expression(tree[1])
		right = neo_expression(tree[2])
		left * right
	when "/"
		left  = neo_expression(tree[1])
		right = neo_expression(tree[2])
		left / right
	when "%"
    		neo_expression(tree[1]) %  neo_expression(tree[2])
  	when "**"
    		neo_expression(tree[1]) ** neo_expression(tree[2])
  	when "<"
    		neo_expression(tree[1]) <  neo_expression(tree[2])
  	when "<="
    		neo_expression(tree[1]) <= neo_expression(tree[2])
  	when "=="
    		neo_expression(tree[1]) == neo_expression(tree[2])
  	when ">="
    		neo_expression(tree[1]) >= neo_expression(tree[2])
  	when ">"
    		neo_expression(tree[1]) >  neo_expression(tree[2])	
	else
		puts "errorx"
	end
end
puts "/-----------------------*"
puts "|   WELCOME TO KLANG!   |"
puts "|    exit to finish     |"
puts "*-----------------------/"
while true
printf("%s","➤ ~ ")
code = gets.to_s
	if code == "exit\n"
		break
	else
		tree = minruby_parse(code)
		answer = neo_expression(tree)
		p(answer)
	end
end
