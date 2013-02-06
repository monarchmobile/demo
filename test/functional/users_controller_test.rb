require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { admin: @user.admin, auth_token: @user.auth_token, email: @user.email, first_name: @user.first_name, house: @user.house, last_name: @user.last_name, password_digest: @user.password_digest, password_reset_sent_at: @user.password_reset_sent_at, password_reset_token: @user.password_reset_token }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { admin: @user.admin, auth_token: @user.auth_token, email: @user.email, first_name: @user.first_name, house: @user.house, last_name: @user.last_name, password_digest: @user.password_digest, password_reset_sent_at: @user.password_reset_sent_at, password_reset_token: @user.password_reset_token }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end