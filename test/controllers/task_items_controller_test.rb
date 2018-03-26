require 'test_helper'

class TaskItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_item = task_items(:one)
  end

  test "should get index" do
    get task_items_url, as: :json
    assert_response :success
  end

  test "should create task_item" do
    assert_difference('TaskItem.count') do
      post task_items_url, params: { task_item: { name: @task_item.name, string: @task_item.string } }, as: :json
    end

    assert_response 201
  end

  test "should show task_item" do
    get task_item_url(@task_item), as: :json
    assert_response :success
  end

  test "should update task_item" do
    patch task_item_url(@task_item), params: { task_item: { name: @task_item.name, string: @task_item.string } }, as: :json
    assert_response 200
  end

  test "should destroy task_item" do
    assert_difference('TaskItem.count', -1) do
      delete task_item_url(@task_item), as: :json
    end

    assert_response 204
  end
end
