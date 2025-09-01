# frozen_string_literal: true

require_relative "crafties/version"
require "yaml"

module Crafties
  APHORISMS = YAML.load_file(File.join(__dir__, "..", "aphorisms.yml"))

  def self.aphorism
    APHORISMS.sample
  rescue Errno::ENOENT
    "No aphorisms found. Run `bin/fetch` first."
  end
end
