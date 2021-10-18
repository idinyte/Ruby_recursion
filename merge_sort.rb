def merge_sort(arr)
  return arr if arr.length < 2

  a = merge_sort(arr[0...arr.length / 2])
  b = merge_sort(arr[arr.length / 2...arr.length])
  sorted = []
  sorted << (a[0] < b[0] ? a.shift : b.shift) until a.empty? || b.empty?
  sorted + a + b
end

arr = [1, 6, 4, 3, 7, 9, 2, 1, 0]
p merge_sort(arr)
