require 'test_helper'

class ModullsControllerTest < ActionController::TestCase
  setup do
    @modull = modulls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modulls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modull" do
    assert_difference('Modull.count') do
      post :create, modull: { name: @modull.name }
    end

    assert_redirected_to modull_path(assigns(:modull))
  end

  test "should show modull" do
    get :show, id: @modull
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modull
    assert_response :success
  end

  test "should update modull" do
    put :update, id: @modull, modull: { name: @modull.name }
    assert_redirected_to modull_path(assigns(:modull))
  end

  test "should destroy modull" do
    assert_difference('Modull.count', -1) do
      delete :destroy, id: @modull
    end

    assert_redirected_to modulls_path
  end
end
