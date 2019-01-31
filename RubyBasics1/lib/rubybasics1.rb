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
  if (arr.length == 0)
    return false
  end
  if (arr.length == 1)
    return false
  end
  sorted_arr = arr.sort
  head =0
  tail = sorted_arr.length-1
  
  while head < tail 
    current_sum = sorted_arr[head] + sorted_arr[tail]
    if current_sum == n
      return true
    elsif current_sum < n
      head = head + 1
    else 
      tail = tail - 1
    end
  end
  return false
end