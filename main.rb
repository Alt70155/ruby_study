class LinkedList
  def initialize(length)
    @length = length
    @cell = Array.new()
  end

  def add(item)
    @cell.push(item)
  end

  def remove(item)
    if @cell.find_index(item)
      @cell.delete_at(@cell.find_index(item))
    else
      nil
    end
  end

  def get(item)
    if item < 0 || !(item.integer?)
      nil
    else
      @cell[item]
    end
  end

  def contains(item)
    !(@cell.select { |m| m == item }.empty?)
  end

  def first
    @cell.first
  end

  def last
    @cell.last
  end

  def length
    @cell.length
  end
end
