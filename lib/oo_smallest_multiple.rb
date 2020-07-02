# Implement your object-oriented solution here!
class SmallestMultiple 
  
  def initialize(limit)
    @limit = limit 
  end 
  
  def lcm
    range = (1..@limit)
    factors = [1] 
    range.each {|number| 
      if factors.find {|factor| number % factor == 0}
        i = 0
        reduced_number = number
        while i < factors.length 
          if reduced_number % factors[i] == 0 
            reduced_number /= factors[i] 
          end
          i += 1
        end 
        factors << reduced_number
      else
        factors << number 
      end
    }
    factors.reduce(:*)
  end 
    
    
end 