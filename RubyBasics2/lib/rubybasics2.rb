# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  if(s.length == 0)
    return false
  end
  if(/[a-z]/.match(s[0]) || /[A-Z]/.match(s[0]))
    if(/[aeiouAEIOU]/.match(s[0]))
      return false
    end
  else
      return false
  end
  return true
end

# Part III
def binary_multiple_of_4? s

  # YOUR CODE HERE
  if(/[a-z]/.match(s) || s.length == 0)
    return false
  end
  if((s.to_i(2) % 4) == 0)
    return true
  end
  return false
end
