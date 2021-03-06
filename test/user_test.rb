require 'helper'

class UserTest < MiniTest::Unit::TestCase
  def test_initailization_sets_userid_if_userID_attribute_provided
    user = User.new('userID' => '123')
    assert_includes user.instance_variables, :@userid
    assert_equal '123', user.userid
  end

  def test_initailization_does_not_set_userid_if_userID_not_provided
    refute_includes User.new.instance_variables, :@userid
  end
end
