module FunWithStrings
  def palindrome?
    lower = self.downcase().gsub(/[^a-zA-Z]/, "")
    rever = self.reverse().downcase().gsub(/[^a-zA-Z]/, "")
    if lower == rever
      return true
    end
    return false
  end
  def count_words
    # your code here
    hold = self.downcase().gsub(/[^a-zA-Z ]/, "").split(" ")
    count = Hash.new(0)
    i = 0
    hold.each() {
      count[hold[i]] = count[hold[i]] + 1
      i = i + 1
    }
    return count
  end
  def anagram_groups
    # your code here
    if(self.length == 0)
      return []
    end
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end