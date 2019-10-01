# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+ name 
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.empty? || s.chars.first =~/[aeiouAEIOU]/ || s.chars.first =~/\W/)
    return false
  else
    return true
  end
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s !~ /^[0-1]/)
    return false
  else
    x = 0
    char = s.chars
    for i in (0...char.length)
      if(char[i] == "1")
        x = x + 2 ** (char.length-1-i)
      end
    end
    
    if(x % 4 == 0)
      return true
    else
      return false
    end
  end
end
