require 'test_helper'

class AccordsControllerTest < ActionController::TestCase
  setup do
    @accord = accords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accord" do
    assert_difference('Accord.count') do
      post :create, accord: { name: @accord.name, picture_url: @accord.picture_url, video_url: @accord.video_url }
    end

    assert_redirected_to accord_path(assigns(:accord))
  end

  test "should show accord" do
    get :show, id: @accord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accord
    assert_response :success
  end

  test "should update accord" do
    put :update, id: @accord, accord: { name: @accord.name, picture_url: @accord.picture_url, video_url: @accord.video_url }
    assert_redirected_to accord_path(assigns(:accord))
  end

  test "should destroy accord" do
    assert_difference('Accord.count', -1) do
      delete :destroy, id: @accord
    end

    assert_redirected_to accords_path
  end
end
