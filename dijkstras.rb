require 'pry'

class Setup
  attr_accessor :graph, :costs, :parents
  def initialize
    @graph = {}
    graph["start"] = {}
    graph["start"]["a"] = 6
    graph["start"]["b"] = 2
    graph["a"] = {}
    graph["a"]["fin"] = 1
    graph["b"] = {}
    graph["b"]["a"] = 3
    graph["b"]["fin"] = 5
    graph["fin"] = {}

    @costs = {}
    costs["a"] = 6
    costs["b"] = 2
    costs["fin"] = Float::INFINITY

    @parents = {}
    parents["a"] = "start"
    parents["b"] = "start"
    parents["fin"] = nil
  end 
end

class Dijkstra

  attr_accessor :setup, :graph, :costs, :parents, :processed

  def initialize
    @setup = Setup.new
    @graph = setup.graph
    @costs = setup.costs
    @parents = setup.parents
    @processed = []
  end 

  def find_best_path
    node = find_lowest_cost_node(costs)
    until node.nil? do     
      cost = costs[node]
      neighbors = graph[node]      
      neighbors.keys.each do |n|
        new_cost = cost + neighbors[n]
        if costs[n] > new_cost
          costs[n] = new_cost
          parents[n] = node
        end   
      end 
      processed << node
      node = find_lowest_cost_node(costs)  
    end
    costs 
  end  
   
  def find_lowest_cost_node(costs)
    lowest_cost = Float::INFINITY
    lowest_cost_node = nil
    costs.each do |node, cost|    
      if cost < lowest_cost && !processed.include?(node)
        lowest_cost = cost
        lowest_cost_node = node
      end 
    end 
    lowest_cost_node
  end

end 

d = Dijkstra.new 
pp d.find_best_path == {"a"=>5, "b"=>2, "fin"=>6}



