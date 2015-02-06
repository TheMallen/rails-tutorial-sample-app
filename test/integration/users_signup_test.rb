require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid sign up data shouldn't create a user" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: {
        name: "",
        email: "user@invalid.com",
        password: '',
        password_confirmation: 'sd'
      }
    end
    assert_template 'users/new'
  end
  
  test "valid sign up data should create a user" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, user: {
        name: "A valid name",
        email: "some@email.com",
        password:"password",
        password_confirmation: "password"
      }
    end
    assert_template 'users/show'
  end
end
