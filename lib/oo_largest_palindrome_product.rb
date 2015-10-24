# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def productset
    array = []
    1.upto(999).each do |x|
      1.upto(999).each do |y| 
        array << x*y
      end
    end
    array.uniq.sort.reverse
  end


  def answer
    array = productset
    array.each do |x|
      x_array = x.to_s.split(",")
      if x_array.all? {|y| y.reverse == y}
        return x
      end
    end 
  end

end