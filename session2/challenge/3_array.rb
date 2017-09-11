# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    output = []
    source = self.chars
    self.chars.length.times do |index|
      output << self[index] if index.even?
    end
    
    output.join
  end
end
