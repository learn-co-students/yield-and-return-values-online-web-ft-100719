require 'pry'

def hello(array)
  i = 0
  arr = []
  while i < array.length
    arr << yield(array[i])
    i += 1
  end
  arr
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
