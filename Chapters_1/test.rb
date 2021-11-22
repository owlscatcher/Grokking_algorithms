# frozen_string_literal: true

require './Test/test_helper'
require_relative 'binary_search'

# :nodoc:
class Tests < Minitest::Test
  def test_bin_search
    assert(BinarySearch.get_index([1], 900) == -1)
    assert(BinarySearch.get_index([1], 1).zero?)
    assert(BinarySearch.get_index([], 900) == -1)
    assert(BinarySearch.get_index([1, 4, 5, 7, 8, 9], 9) == 5)
    assert(BinarySearch.get_index([1, 4, 5, 7, 8, 9], 1).zero?)
    assert(BinarySearch.get_index([1, 4, 5, 7, 8, 9], 6) == -1)

    array = (1..10_000).to_a
    assert(BinarySearch.get_index(array, array[1000]) == 1000)
  end
end
