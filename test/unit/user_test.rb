require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user must input a username" do
    user = FactoryGirl.build(:user, :username => nil )
    user.save
    refute user.valid?
  end

  test "username does not accept non-alpha-numeric characters" do
    user = FactoryGirl.build(:user, :username => "$yolobro")
    user.save
    refute user.valid?
  end

  # test "user must have an email" do
  #   @user.email = nil
  #   refute @user.valid?
  # end

  # test "email is unique" do
  #   user2 = FactoryGirl.build(:user)
  #   user2.save
  #   refute user2.valid?
  # end

  # test "email has correct syntax" do
  #   @user.username = "$yolobro"
  #   assert_nil @user.username.match(/^\w+$/)
  # end

  test "user must have a password" do

  end

  test "confirmation password does not match password" do

  end

  test "cannot change the password_digest" do

  end

end