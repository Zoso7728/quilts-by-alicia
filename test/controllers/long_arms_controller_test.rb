require 'test_helper'

class LongArmsControllerTest < ActionController::TestCase
  setup do
    @long_arm = long_arms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:long_arms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create long_arm" do
    assert_difference('LongArm.count') do
      post :create, long_arm: { batting: @long_arm.batting, binding: @long_arm.binding, email: @long_arm.email, name: @long_arm.name, pantograph_patterns: @long_arm.pantograph_patterns, phone: @long_arm.phone, quilting: @long_arm.quilting, size: @long_arm.size, total: @long_arm.total }
    end

    assert_redirected_to long_arm_path(assigns(:long_arm))
  end

  test "should show long_arm" do
    get :show, id: @long_arm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @long_arm
    assert_response :success
  end

  test "should update long_arm" do
    patch :update, id: @long_arm, long_arm: { batting: @long_arm.batting, binding: @long_arm.binding, email: @long_arm.email, name: @long_arm.name, pantograph_patterns: @long_arm.pantograph_patterns, phone: @long_arm.phone, quilting: @long_arm.quilting, size: @long_arm.size, total: @long_arm.total }
    assert_redirected_to long_arm_path(assigns(:long_arm))
  end

  test "should destroy long_arm" do
    assert_difference('LongArm.count', -1) do
      delete :destroy, id: @long_arm
    end

    assert_redirected_to long_arms_path
  end
end
