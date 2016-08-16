class List
  attr_accessor :next, :data

  def initialize(data=nil)
    @next = nil
    @data = data
  end 

  def insert(data, current=self)
    if current.next
      insert(data, current.next)
    else 
      current.next = List.new(data)
    end 
  end

  def pop(parent=nil, current=self)
    if current.next 
      pop(current, current.next)
    else 
      parent.next = nil
      current
    end 
  end

  def delete(data, parent=self, current=self)
    if current.data == data
      parent.next = current.next
    else 
      delete(data, current, current.next)
    end 
  end

  def update(old, new, current=self)
    if current.data == old
      current.tap {|n| n.data = new}
    else 
      update(old, new, current.next)
    end 
  end 

  def find(data, current=self)
    if current.data == data
      current
    else 
      find(data, current.next)
    end 
  end     
end  

list = List.new
list.insert('hi')
list.insert('woo')
list.insert('yaaa')

puts list.next.data == 'hi'
puts list.next.next.data == 'woo'
puts list.next.next.next.data == 'yaaa'
puts list.find('yaaa').data == 'yaaa'
puts list.update('woo', 'new!').data == 'new!'
list.delete('new!')
puts list.next.next.data == 'yaaa'
puts list.pop.data == 'yaaa'
puts list.next.next == nil
