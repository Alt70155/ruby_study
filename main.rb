class List
  attr_accessor :cell

  class Node
    attr_accessor :data, :next

    def initialize(data=nil)
      @data = data
      @next = nil
    end
  end

  def initialize
    @cell = Node.new
  end

  def append(data)
    new_obj = Node.new(data)
    @cell.next = new_obj
    p "data:#{@data} next:#{@next}"
  end
end

list = List.new
list.append('hello')
