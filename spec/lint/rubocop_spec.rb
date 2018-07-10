# frozen_string_literal: true

require "spec_helper"

describe "rubocop analysis" do
  # Remove the "x" from "xit" to enable this lint test.
  it "has no offenses" do
    expect(`rubocop`).to match(/no\ offenses\ detected/)
  end
end
