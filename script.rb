
def merge(left_sorted_array, right_sorted_array, l = 0, r = 0, result = [])
  if left_sorted_array[l] == nil || right_sorted_array[l] == nil
    return result
  elsif left_sorted_array[l] == nil
    return result += right_sorted_array[r..-1]
  elsif right_sorted_array[r] == nil
    return result += left_sorted_array[l..-1]
  elsif left_sorted_array[l] < right_sorted_array[r]
    result.push(left_sorted_array[l])
    merge(left_sorted_array, right_sorted_array, l += 1, r, result)
  else
    result.push(right_sorted_array[r])
    merge(left_sorted_array, right_sorted_array, l, r += 1, result)
  end
end

left_sorted_array = [1,6,8]
right_sorted_array = [2,3,7]
merge(left_sorted_array, right_sorted_array)

def merge_sort(array)
  if array.length <= 1
    return array
  else
    left = array[0...(array.length/2)]
    right = array[(array.length/2..-1)]
    return merge(left, right)
  end
end

array = [1,6,8,2,3,7]
merge_sort(array)