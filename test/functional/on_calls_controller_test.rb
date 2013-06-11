require 'test_helper'

class OnCallsControllerTest < ActionController::TestCase
  setup do
    @on_call = on_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:on_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create on_call" do
    assert_difference('OnCall.count') do
      post :create, on_call: { count: @on_call.count, email: @on_call.email, name: @on_call.name, phone: @on_call.phone }
    end

    assert_redirected_to on_call_path(assigns(:on_call))
  end

  test "should show on_call" do
    get :show, id: @on_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @on_call
    assert_response :success
  end

  test "should update on_call" do
    put :update, id: @on_call, on_call: { count: @on_call.count, email: @on_call.email, name: @on_call.name, phone: @on_call.phone }
    assert_redirected_to on_call_path(assigns(:on_call))
  end

  test "should destroy on_call" do
    assert_difference('OnCall.count', -1) do
      delete :destroy, id: @on_call
    end

    assert_redirected_to on_calls_path
  end
end
