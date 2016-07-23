require 'set'
require 'pry'

class Stations
  attr_reader :stations
  def initialize
    @stations           = {}
    stations["kone"]   = Set.new(["id", "nv", "ut"])
    stations["ktwo"]   = Set.new(["wa", "id", "mt"])
    stations["kthree"] = Set.new(["or", "nv", "ca"])
    stations["kfour"]  = Set.new(["nv", "ut"])
    stations["kfive"]  = Set.new(["ca", "az"])
  end

  def best_stations(states_needed)
    final = Set.new
    until states_needed.empty? 
      states_covered = Set.new
      best_station = nil
      @stations.each do |station, states|
        covered = states_needed & states
        if covered.length > states_covered.length 
          best_station = station 
          states_covered = states 
        end 
      end 
    final << best_station  
    states_needed -= states_covered
    end
    final
  end 
end 
        
states_needed = Set.new(["mt", "wa", "or", "id", "nv", "ut", "ca", "az"])
puts Stations.new.best_stations(states_needed) == Set.new(['kone', 'ktwo', 'kthree', 'kfive'])