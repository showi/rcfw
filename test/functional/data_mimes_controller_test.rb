require 'test_helper'

class DataMimesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_mimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_mime" do
    assert_difference('DataMime.count') do
      post :create, :data_mime => { }
    end

    assert_redirected_to data_mime_path(assigns(:data_mime))
  end

  test "should show data_mime" do
    get :show, :id => data_mimes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => data_mimes(:one).to_param
    assert_response :success
  end

  test "should update data_mime" do
    put :update, :id => data_mimes(:one).to_param, :data_mime => { }
    assert_redirected_to data_mime_path(assigns(:data_mime))
  end

  test "should destroy data_mime" do
    assert_difference('DataMime.count', -1) do
      delete :destroy, :id => data_mimes(:one).to_param
    end

    assert_redirected_to data_mimes_path
  end
end
