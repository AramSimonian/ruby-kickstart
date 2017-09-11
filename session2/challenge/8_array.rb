# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

class Array
  def count_same(num_in_a_row)
    items = []
    
    self.each do |x|
      if (items.length == 0) || x == items[0]
        items << x
      else
        items = []
        items << x
      end
      return true if items.length == num_in_a_row
    end
    
    return false
  end
end

def got_three?(items_to_check)
  items_to_check.count_same(3)
end
