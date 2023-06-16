require_relative 'mystack'

class StackQueue
    def initialize
    @instack = MyStack.new
    @outstack = MyStack.new
    end

    def enqueue(value) 
        @instack.push(value)
    end

    def dequeue
       if outstack.empty?
        backwards
       end
       @outstack.pop
    end

    def backwards
        until @instack.empty?
          @outstack.push(@instack.pop)
        end
    end

    def empty?
        @store.empty?
    end

    def size
        @store.size
    end





end