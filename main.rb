class List
  attr_accessor :cell

  class Node
    attr_accessor :data, :next

    def initialize(data='head')
      @data = data
      @next = 'nextPointIsNull'
    end
  end

  def initialize
    @cell = Node.new
  end

  def append(data)
    tmp = @cell
    #新しいオブジェクトを作成し、そのオブジェクトを現在のオブジェクトのnextに格納する
    while tmp.next != 'nextPointIsNull' do
      tmp = tmp.next
    end
    tmp.next = Node.new(data)
    p "data：\'#{tmp.data}\' next : #{tmp.next}"
  end

end

list = List.new
p "data：\'#{list.cell.data}\' next : #{list.cell.next}"
list.append('hello')
list.append('world')
list.append('LinkedList')
list.append('taro')
