require 'test_helper'

class ScheduleItemsControllerTest < ActionController::TestCase
  setup do
    @schedule_item = schedule_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_item" do
    assert_difference('ScheduleItem.count') do
      post :create, schedule_item: { price: @schedule_item.price, product_id: @schedule_item.product_id, schedule_id: @schedule_item.schedule_id }
    end

    assert_redirected_to schedule_item_path(assigns(:schedule_item))
  end

  test "should show schedule_item" do
    get :show, id: @schedule_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_item
    assert_response :success
  end

  test "should update schedule_item" do
    patch :update, id: @schedule_item, schedule_item: { price: @schedule_item.price, product_id: @schedule_item.product_id, schedule_id: @schedule_item.schedule_id }
    assert_redirected_to schedule_item_path(assigns(:schedule_item))
  end

  test "should destroy schedule_item" do
    assert_difference('ScheduleItem.count', -1) do
      delete :destroy, id: @schedule_item
    end

    assert_redirected_to schedule_items_path
  end
end
