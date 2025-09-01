# frozen_string_literal: true

require_relative "crafty/version"
require "yaml"

module Crafty
  APHORISMS = YAML.load_file("aphorisms.yml")

  def self.aphorism
    APHORISMS.sample
  rescue Errno::ENOENT
    "No aphorisms found. Run `bin/fetch` first."
  end
end
