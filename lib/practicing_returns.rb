require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection.push(yield(array[i]))
    i += 1
  end
  #p collection | testing if it works
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
