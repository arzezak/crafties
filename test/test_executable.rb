# frozen_string_literal: true

require "test_helper"

class TestExecutable < Minitest::Test
  def setup
    @output = `#{File.expand_path("../exe/crafty", __dir__)}`
  end

  def test_crafty_executable_outputs_a_string
    assert_kind_of String, @output
  end

  def test_crafty_executable_output_is_not_empty
    refute_empty @output.strip
  end
end
