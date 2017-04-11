leaf_a = ["葉1"]
leaf_b = ["葉2"]
leaf_c = ["葉3"]
leaf_d = ["葉4"]
node2 = ["節2", leaf_a, leaf_b]
node3 = ["節3", leaf_c, leaf_d]
node1 = ["節1", node2, node3]

def preorder(tree)
	p tree[0]
	if tree[0].start_with?("節")
		preorder(tree[1])
		preorder(tree[2])
	end
end
#preorder(node1)

# 節1 => 葉4 => 節2 => 葉1 => 節3 => 葉2 => 葉3

neonode3 = ["節3", leaf_b, leaf_c]
neonode2 = ["節2", leaf_a, neonode3]
neonode1 = ["節1", leaf_d, neonode2]
preorder(neonode1)

