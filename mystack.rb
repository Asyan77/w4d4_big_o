class MyStack
  def initialize
    @store = []
  end

  def push(value)
    @store.push(value)
  end

  def pop
    @store.pop
  end

  def peek
    p @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.size == 0
  end
end
