require "byebug"
class MyQueue
  def initialize
    @store = []
  end

  def enqueue(value)
    @store << value
  end

  def dequeue
    @store.shift
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

