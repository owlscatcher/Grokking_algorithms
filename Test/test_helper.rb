# frozen_string_literal: true

require 'factory_girl'
require 'minitest/autorun'

FactoryGirl.reload

module Minitest
  class Test
    include FactoryGirl::Syntax::Methods
  end
end
