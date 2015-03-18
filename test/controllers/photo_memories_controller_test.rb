require 'test_helper'

class PhotoMemoriesControllerTest < ActionController::TestCase
  setup do
    @photo_memory = photo_memories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_memories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_memory" do
    assert_difference('PhotoMemory.count') do
      post :create, photo_memory: { email: @photo_memory.email, name: @photo_memory.name, phone: @photo_memory.phone, size: @photo_memory.size, total: @photo_memory.total }
    end

    assert_redirected_to photo_memory_path(assigns(:photo_memory))
  end

  test "should show photo_memory" do
    get :show, id: @photo_memory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_memory
    assert_response :success
  end

  test "should update photo_memory" do
    patch :update, id: @photo_memory, photo_memory: { email: @photo_memory.email, name: @photo_memory.name, phone: @photo_memory.phone, size: @photo_memory.size, total: @photo_memory.total }
    assert_redirected_to photo_memory_path(assigns(:photo_memory))
  end

  test "should destroy photo_memory" do
    assert_difference('PhotoMemory.count', -1) do
      delete :destroy, id: @photo_memory
    end

    assert_redirected_to photo_memories_path
  end
end
