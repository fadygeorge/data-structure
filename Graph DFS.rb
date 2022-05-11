require_relative("stack2.rb")

class Graph
  attr_accessor :nodes

  def initialize
    @nodes = {}
  end

  def add_node(v)
    @nodes[v] = []
  end

  def add_edge_undirected(u,v)            #undirected edges
    @nodes[u] << v
    @nodes[v] << u
  end

  def add_edge_directed(u,v)            #directed edges
    @nodes[u] << v
  end

  def dfs_mod(n,visited_nodes,s)
    if visited_nodes[n] == false
      s.push(n)
      visited_nodes[n]=true
        t = s.get_top
        puts n
        for i in @nodes[t]
          dfs_mod(i,visited_nodes,s)
        end
    end
  end

  def dfs()
    s = Linkedstack.new()
    visited_nodes = {}
    for i in @nodes.keys
      visited_nodes[i]= false
    end
    for i in @nodes.keys
      if visited_nodes[i] == false
      dfs_mod(i,visited_nodes,s)
      end
    end
  end

  def dfs_v(v)
    s = Linkedstack.new()
    visited_nodes = {}
    for i in @nodes.keys
      visited_nodes[i]= false
    end
      dfs_mod(v,visited_nodes,s)
  end



end

# test cases of DFS traversal for graph
g = Graph.new
g.add_node(0)
g.add_node(1)
g.add_node(2)
g.add_node(3)
#puts g.nodes
g.add_edge_directed(2,0)
g.add_edge_directed(1,2)
g.add_edge_directed(0,1)
g.add_edge_directed(0,2)
g.add_edge_directed(2,3)
g.add_edge_directed(3,3)
#puts g.nodes

g.dfs()
puts ""
g.dfs_v(1)
