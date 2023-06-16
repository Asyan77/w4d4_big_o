

class MinMaxStack
    def initialize
      @store = []
      @max = nil
      @min = nil
    end

    def push(value)
       @store.push(value)
       if value > @max 
        @max = value
       end
       if value < @min 
        @min = value 
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