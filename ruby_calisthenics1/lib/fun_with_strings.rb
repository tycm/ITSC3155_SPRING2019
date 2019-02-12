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
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end