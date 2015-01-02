require 'test_helper'

class EntityRolesControllerTest < ActionController::TestCase
  setup do
    @entity_role = entity_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity_role" do
    assert_difference('EntityRole.count') do
      post :create, entity_role: {  }
    end

    assert_redirected_to entity_role_path(assigns(:entity_role))
  end

  test "should show entity_role" do
    get :show, id: @entity_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity_role
    assert_response :success
  end

  test "should update entity_role" do
    patch :update, id: @entity_role, entity_role: {  }
    assert_redirected_to entity_role_path(assigns(:entity_role))
  end

  test "should destroy entity_role" do
    assert_difference('EntityRole.count', -1) do
      delete :destroy, id: @entity_role
    end

    assert_redirected_to entity_roles_path
  end
end
