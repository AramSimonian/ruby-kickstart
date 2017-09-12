def staircase(top_step)
  output = {}
  
  1.upto(top_step) do | val |
    output[val] = get_evens(val) if (val).odd?
  end
  output
end

def get_evens(odd_num)
  output = []
  (odd_num-1).downto(1) { |o| output << o if o.even? }
  output.sort
end