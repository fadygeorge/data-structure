require_relative("queue array.rb")

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


  def bfs(v)
    q = Queue.new(@nodes.length)
    visited_nodes = {}
    for i in @nodes.keys
      visited_nodes[i]= false
    end
    q.enqueue(v)
    while q.is_empty == false
      d = q.dequeue
      visited_nodes[d] = true
      puts d
      for i in @nodes[d]
        if visited_nodes[i] == false
          q.enqueue(i)
          visited_nodes[i] = true
        end
      end
    end

  end

end

# test cases of BFS traversal for graph
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

g.bfs(2)
