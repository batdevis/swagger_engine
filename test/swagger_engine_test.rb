# frozen_string_literal: true

require 'test_helper'

class SwaggerEngineTest < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, SwaggerEngine
  end
end
