class Stack
  attr_reader :limit

  def initialize
    @stack = []
    # this is an arbitrary value to make testing easier
    # 1,024 would be way too high to test!
    @limit = 10
  end

  # add item to top of stack if not full
  # if full, throw error
  def push(item)
    if self.stack.length < self.limit
      self.stack.push(item)
    else
      raise IndexError.new 'Stack already full'
    end
  end

  
  def pop
    self.stack.pop
  end

  
  def peek
    self.stack[-1]
  end

  # return true if stack is empty, otherwise false
  def isEmpty?
    self.stack == []
  end

  # return true if stack is full, otherwise false
  def isFull?
    self.stack.length == self.limit
  end

  # return number of items in stack
  def size
    self.stack.length
  end

  # return -1 if item not in stack, otherwise integer representing 
  # how far it is from the top
  def search(target)
    x = self.stack.index(target)
    return -1 if x == nil
    self.stack.length - x - 1
  end

  # print contents of stack: do not return the stack itself!
  def print
    self.stack[0..-1]
  end
end

if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your tests!
end

