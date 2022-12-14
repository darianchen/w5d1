class MaxIntSet
  attr_reader :store
  def initialize(max)
    @max = max
    @store = Array.new(max, false) #booleans cannot be mutated
  end

  def insert(num)
    if is_valid?(num)
      @store[num] = true
    else
      raise "Out of bounds"
    end
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    #return false unless 
    return true if store[num] == true
    false

  end

  private

  def is_valid?(num)
    return true if num <= @max && num >= 0
  end

  def validate!(num)

  end
end


class IntSet
  attr_reader :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num) #private method must be called explicitly
    self[num] << num
  end

  def remove(num)
    store[num % num_buckets].delete(num)
  end

  def include?(num)
    return true if @store[num % num_buckets].include?(num) 
    false

  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)

  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    
  end

  def resize!

  end
end
