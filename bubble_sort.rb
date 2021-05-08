# frozen_string_literal: true

def bubble_sort(set)
  sorts = 0
  set.each_with_index do |n, i|
    next if i < set.length - 1

    if n > set[i + 1]
      set[i], set[i + 1] = set[i + 1], set[i]
      sorts += 1
    end
  end
  return set if sorts.zero?

  set = bubble_sort set
end

puts bubble_sort([3, 5, 1, 6, 7, 2, 4, 8])
