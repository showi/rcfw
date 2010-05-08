require 'test_helper'

class DishesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dish" do
    assert_difference('Dish.count') do
      post :create, :dish => { }
    end

    assert_redirected_to dish_path(assigns(:dish))
  end

  test "should show dish" do
    get :show, :id => dishes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dishes(:one).to_param
    assert_response :success
  end

  test "should update dish" do
    put :update, :id => dishes(:one).to_param, :dish => { }
    assert_redirected_to dish_path(assigns(:dish))
  end

  test "should destroy dish" do
    assert_difference('Dish.count', -1) do
      delete :destroy, :id => dishes(:one).to_param
    end

    assert_redirected_to dishes_path
  end
end
