# frozen_string_literal: true

require "test_helper"

class TestCrafty < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Crafty::VERSION
  end

  def test_that_it_returns_an_aphorism
    assert_kind_of String, Crafty.aphorism
  end
end
