class Graph
  
  def initialize
    @content = {} 
  end

  def add(key, value)
    @content[key] = value
  end

  def bfs(you)
  queue = [] << (@content[you])
    until queue.empty?    
      check = queue.first.shift
      if end_with_m(check)   
        return check
      else 
        queue.delete([]) if queue.first == []
        queue << @content[check] unless @content[check] ==  [] 
      end 
    end 
  "Not Found"  
  end

  def end_with_m(name)
    name[-1] == 'm'
  end
end

graph = Graph.new
graph.add('you', ["alice", "bob", "claire"])
graph.add("bob", ["anuj", "peggy"])
graph.add("alice", ["peggy"])
graph.add("claire", ["thom", "jonny"])
graph.add("anuj", [])
graph.add("peggy", [])
graph.add("thom", [])
graph.add("jonny", [])

puts graph.bfs("you")

