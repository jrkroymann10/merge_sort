# takes in an array and returns a sorted array, using a recursive merge sort methodology.

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  elsif right.first < left.first
    [right.first] + merge(left, right[1..right.length])
  end
end

def merge_sort(ary)
  if ary.length == 1
    ary
  else
    half = (ary.length / 2).floor
    left = merge_sort(ary[0..(half - 1)])
    right = merge_sort(ary[half..ary.length])
    merge(left, right)
  end
end

p merge_sort([7, 5, 3, 1, 8, 2, 4, 6])

