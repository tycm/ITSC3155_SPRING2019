# Lab 1
# Part I
def sum arr
  sum = 0

  for hold in arr do
    sum += hold
  end
  return sum
end

# Part II
def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  
  largest = arr[1]
  seclargest = arr[2]
  
  for value in arr do
      if value > largest
          largest = value
      end
  end
  
  for sec in arr do
      if sec != largest
          if sec > seclargest
              seclargest = sec
          end
      end
  end
  
  return largest + seclargest
end

# Part III
def sum_to_n? arr, n
  if arr.length == 0
    return false
  end
  if arr.length == 1
    return false
  end
  for outer in arr
    for inner in arr
      if outer != inner
        hold = outer + inner
      end
      if hold == n
        return true
      end
    end
  end
  return false
end