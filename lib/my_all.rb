require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    i = i + 1
    block_return_values << yield(collection[i])
  end

  if block_return_values.include?(false)
    false
  else
    true
  end

end
