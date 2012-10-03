require 'test_helper'

class FeatureTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Feature.new.valid?
  end
end
