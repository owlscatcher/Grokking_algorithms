# frozen_string_literal: true

require './Test/test_helper'
require_relative 'selected_sort'

# :nodoc:
class Tests < Minitest::Test
  def test_selected_sort
    assert(SelectedSort.sort([4, 3, 7, 5]) == [3, 4, 5, 7])
    assert(SelectedSort.sort([4, -1, 3, -7]) == [-7, -1, 3, 4])
    assert(SelectedSort.sort([1]) == [1])
    assert(SelectedSort.sort([]) == [])

    arr = [43, 23, 55, 1, 78, 3, 2, 3, 99, 22, 53, 4, 7, 8, 21]
    assert(SelectedSort.sort(arr) == [1, 2, 3, 3, 4, 7, 8, 21, 22, 23, 43, 53, 55, 78, 99])
  end
end
