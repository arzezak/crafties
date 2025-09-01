# frozen_string_literal: true

require "test_helper"

class TestCrafties < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Crafties::VERSION
  end

  def test_that_it_returns_an_aphorism
    assert_kind_of String, Crafties.aphorism
  end
end
