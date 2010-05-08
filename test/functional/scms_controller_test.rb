require 'test_helper'

class ScmsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scm" do
    assert_difference('Scm.count') do
      post :create, :scm => { }
    end

    assert_redirected_to scm_path(assigns(:scm))
  end

  test "should show scm" do
    get :show, :id => scms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => scms(:one).to_param
    assert_response :success
  end

  test "should update scm" do
    put :update, :id => scms(:one).to_param, :scm => { }
    assert_redirected_to scm_path(assigns(:scm))
  end

  test "should destroy scm" do
    assert_difference('Scm.count', -1) do
      delete :destroy, :id => scms(:one).to_param
    end

    assert_redirected_to scms_path
  end
end
