# frozen_string_literal: true

# :nodoc:
module BinarySearch
  class << self
    def get_index(arr, item)
      search_index(arr, item, 0, arr.size - 1)
    end

    private

    def search_index(arr, item, min, max)
      return -1 unless min <= max

      mid = (min + max) / 2

      return mid if item == arr[mid]

      if item > arr[mid]
        search_index(arr, item, mid + 1, max)
      else
        search_index(arr, item, min, mid - 1)
      end
    end
  end
end
