require 'test_helper'

class CattypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cattypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cattype" do
    assert_difference('Cattype.count') do
      post :create, :cattype => { }
    end

    assert_redirected_to cattype_path(assigns(:cattype))
  end

  test "should show cattype" do
    get :show, :id => cattypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cattypes(:one).to_param
    assert_response :success
  end

  test "should update cattype" do
    put :update, :id => cattypes(:one).to_param, :cattype => { }
    assert_redirected_to cattype_path(assigns(:cattype))
  end

  test "should destroy cattype" do
    assert_difference('Cattype.count', -1) do
      delete :destroy, :id => cattypes(:one).to_param
    end

    assert_redirected_to cattypes_path
  end
end
