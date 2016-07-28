def bubble_sort array
  i=0
  j=1
  while i < array.length
    if (array[i] <=> array[j]) == 1
      array[i],array[j] = array[j],array[i]
    end
    i+=1
    j=i+1
    if j > array.length
      i = 0
      j = 1
      if array == array.sort
        break
      end
    end
  end
  array
end

def bubble_sort_by array
  i = 0
  j = 1
  while i < array.length
    if yield(array[i],array[j]) > 0
      array[i],array[j] = array[j],array[i]
    end
    i+=1
    j=i+1
    if j > array.length
      i = 0
      j = 1
      if array == array.sort.reverse
        break
      end
    end
  end
  array
end

array = ["hi", "hello", "hey"]

bubble_sort_by(array){|left, right| left.length - right.length}

