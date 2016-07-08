require 'test_helper'

class PracticaltasksControllerTest < ActionController::TestCase
  setup do
    @practicaltask = practicaltasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:practicaltasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create practicaltask" do
    assert_difference('Practicaltask.count') do
      post :create, practicaltask: { course_id: @practicaltask.course_id, description: @practicaltask.description, duedate: @practicaltask.duedate, taskname: @practicaltask.taskname }
    end

    assert_redirected_to practicaltask_path(assigns(:practicaltask))
  end

  test "should show practicaltask" do
    get :show, id: @practicaltask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @practicaltask
    assert_response :success
  end

  test "should update practicaltask" do
    patch :update, id: @practicaltask, practicaltask: { course_id: @practicaltask.course_id, description: @practicaltask.description, duedate: @practicaltask.duedate, taskname: @practicaltask.taskname }
    assert_redirected_to practicaltask_path(assigns(:practicaltask))
  end

  test "should destroy practicaltask" do
    assert_difference('Practicaltask.count', -1) do
      delete :destroy, id: @practicaltask
    end

    assert_redirected_to practicaltasks_path
  end
end
