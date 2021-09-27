class LRUCache
  attr_reader :size, :cache
  def initialize(size)
      @size = size
      @cache = []
    end

    def count
      # returns number of elements currently in cache
      cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if count == size
        if !cache.include?(el)
          cache.shift
          cache << el 
        else
          cache.delete(el)
          cache << el
        end
      else
        if !cache.include?(el)
          cache << el
        else
          cache.delete(el)
          cache << el
        end
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache
    end

    private
    # helper methods go here!

  end


johnny_cache = LRUCache.new(4)

p johnny_cache.add("I walk the line")
p johnny_cache.add(5)

p johnny_cache.count # => returns 2

p johnny_cache.add([1,2,3])
p johnny_cache.add(5)
p johnny_cache.add(-5)
p johnny_cache.add({a: 1, b: 2, c: 3})
p johnny_cache.add([1,2,3,4])
p johnny_cache.add("I walk the line")
p johnny_cache.add(:ring_of_fire)
p johnny_cache.add("I walk the line")
p johnny_cache.add({a: 1, b: 2, c: 3})


p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
