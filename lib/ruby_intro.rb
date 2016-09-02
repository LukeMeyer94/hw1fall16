# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  sum = 0
  for i in 0..arr.length
    sum += arr[i].to_i
  end
  return sum
end

def max_2_sum arr
  if arr[0].to_i > arr[1].to_i
    first = arr[0]
    second = arr[1]
  else
    first = arr[1]
    second = arr[0]
  end
  for i in 2...arr.length
    if arr[i].to_i >= first.to_i
      second = first;
      first = arr[i]
    elsif (arr[i].to_i > second) && (arr[i] != first)
      second = arr[i]
    end
  end
  return first.to_i + second.to_i
end


def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end
  for i in 0..arr.length
    for j in i+1..arr.length
      if (arr[i].to_i + arr[j].to_i) == n 
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  firstLetter = s[0,1]
  vowels = "aeiouAEIOU"
  consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  if vowels.include?(firstLetter)
    return false
  elsif consonants.include?(firstLetter)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  valid = "01"
  if s.length < 1
    return false
  end
  for i in 0...s.length
    if valid.include?(s[i])
    else
      return false
    end
  end
  num = s.to_i(2)
  if num.to_i % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price

  def initialize(i,p)
    if i.length > 0
      @isbn = i
    else
      raise ArgumentError.new("Invalid ISBN")
    end
    if p.to_f > 0
      @price = p
    else
      raise ArgumentError.new("Price must be greater than zero")
    end
  end
  
  def price_as_string
    newPrice = "%.2f" % @price
    return "$#{newPrice}"
  end
end
