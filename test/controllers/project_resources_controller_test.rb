require 'test_helper'

class ProjectResourcesControllerTest < ActionController::TestCase
  setup do
    @project_resource = project_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_resource" do
    assert_difference('ProjectResource.count') do
      post :create, project_resource: { order: @project_resource.order, project_id: @project_resource.project_id, resource_id: @project_resource.resource_id }
    end

    assert_redirected_to project_resource_path(assigns(:project_resource))
  end

  test "should show project_resource" do
    get :show, id: @project_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_resource
    assert_response :success
  end

  test "should update project_resource" do
    patch :update, id: @project_resource, project_resource: { order: @project_resource.order, project_id: @project_resource.project_id, resource_id: @project_resource.resource_id }
    assert_redirected_to project_resource_path(assigns(:project_resource))
  end

  test "should destroy project_resource" do
    assert_difference('ProjectResource.count', -1) do
      delete :destroy, id: @project_resource
    end

    assert_redirected_to project_resources_path
  end
end
