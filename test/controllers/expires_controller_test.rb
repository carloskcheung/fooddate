require 'test_helper'

class ExpiresControllerTest < ActionController::TestCase
  setup do
    @expire = expires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expire" do
    assert_difference('Expire.count') do
      post :create, expire: { food: @expire.food, freezer: @expire.freezer, fridge: @expire.fridge, lifedate: @expire.lifedate }
    end

    assert_redirected_to expire_path(assigns(:expire))
  end

  test "should show expire" do
    get :show, id: @expire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expire
    assert_response :success
  end

  test "should update expire" do
    patch :update, id: @expire, expire: { food: @expire.food, freezer: @expire.freezer, fridge: @expire.fridge, lifedate: @expire.lifedate }
    assert_redirected_to expire_path(assigns(:expire))
  end

  test "should destroy expire" do
    assert_difference('Expire.count', -1) do
      delete :destroy, id: @expire
    end

    assert_redirected_to expires_path
  end
end
