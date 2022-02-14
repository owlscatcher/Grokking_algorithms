# frozen_string_literal: true

# :nodoc:
module SelectedSort
  class << self
    def sort(arr)
      temp_arr = arr.map(&:dup)
      result = Array.new
      result << temp_arr.delete_at(find_smallest(temp_arr)) until temp_arr.empty?

      result
    end

    def find_smallest(arr)
      sml_element = arr[0]
      sml_index = 0

      arr.each_with_index do |element, index|
        if element < sml_element
          sml_element = element
          sml_index = index
        end
      end

      sml_index
    end
  end
end
