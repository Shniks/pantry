require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/cookbook'

class CookbookTest < Minitest::Test

  def test_if_it_exists
    cookbook = Cookbook.new

    assert_instance_of Cookbook, cookbook
  end
  
end
