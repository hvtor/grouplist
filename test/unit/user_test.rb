require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do 
    @user = FactoryGirl.create(:user)
    assert @user.valid?
  end

  test "user must input a username" do
    @user.username = nil
    refute @user.valid?
  end

  test "username does not accept non-alpha-numeric characters" do
    @user.username = "$yolobro"
    assert_nil @user.username.match(/^\w+$/)
  end

  # test for spaces
  # test for weird characters
  #assert_equal "John123", @user.username
  # end

  test "user must have an email" do
    @user.email = nil
    refute @user.valid?
  end

  test "email is unique" do

  end

  test "email has correct syntax" do

  end

  test "user must have a password" do

  end

  test "confirmation password does not match password" do

  end

  test "cannot change the password_digest" do

  end

end