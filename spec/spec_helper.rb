# frozen_string_literal: true

require_relative '../lib/shopping_cart'
require_relative '../lib/item'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
