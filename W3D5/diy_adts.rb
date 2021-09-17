class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack.push(el)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[-1]
  end
end

# p dolly = Stack.new
# p dolly.push("hello")
# p dolly.push("dolly")
# p dolly.pop
# p dolly.peek
# p dolly

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[-1]
  end
end

# p dolly = Queue.new
# p dolly.enqueue("hello")
# p dolly.enqueue("dolly")
# p dolly.dequeue
# p dolly.peek
# p dolly

class Map
  def initialize
    @map = []
    @i = 0
    @key = @map[@i][0]
    @value = @map[@i][1]
  end

  def set(key,value)
    count = 0
    while @i < @map.length
      if @key == key
        @value = value
        count += 1
      end
      @i += 1
    end
    @map << [key, value] if count == 0
    @i = 0
  end

  def get(key)
    while @i < @map.length
      return [@key, @value] if @key == key
      @i += 1
    end
    return false
    @i = 0
  end

  def delete(key)
    while @i < @map.length
      @map.delete(@map[i]) if @key == key
      @i += 1
    end
    @i = 0
  end

  def show
    p @map
  end
end

meg = Map.new
p meg.set("toast", 4)
p meg.set("halloween", 6)
p meg.set("toast", 14)
p meg.set("chloe", 7)
p meg.get("toast")
p meg.delete("halloween")
p meg.show