class FixedArray

  attr_accessor :arr

  def initialize(size)
    @arr = Array.new(size)
  end

  def check_bounds(index)
    raise StandardError, 'Out of Bounds' if index >= @arr.length
  end

  def set(index, element)
    check_bounds(index)
    @arr[index] = element
  end

  def get(index)
    check_bounds(index)
    @arr[index]
  end

end

# fixed = FixedArray.new(5)
# # p fixed.get(6)
# #
# # fixed.set(6, "hallo!")
# # p fixed.get(6)
#
# fixed.get(6)
