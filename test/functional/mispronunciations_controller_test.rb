require 'test_helper'

class MispronunciationsControllerTest < ActionController::TestCase
  setup do
    @mispronunciation = mispronunciations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mispronunciations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mispronunciation" do
    assert_difference('Mispronunciation.count') do
      post :create, :mispronunciation => { :corrected_pronunciation => @mispronunciation.corrected_pronunciation, :mispronunciation => @mispronunciation.mispronunciation }
    end

    assert_redirected_to mispronunciation_path(assigns(:mispronunciation))
  end

  test "should show mispronunciation" do
    get :show, :id => @mispronunciation
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mispronunciation
    assert_response :success
  end

  test "should update mispronunciation" do
    put :update, :id => @mispronunciation, :mispronunciation => { :corrected_pronunciation => @mispronunciation.corrected_pronunciation, :mispronunciation => @mispronunciation.mispronunciation }
    assert_redirected_to mispronunciation_path(assigns(:mispronunciation))
  end

  test "should destroy mispronunciation" do
    assert_difference('Mispronunciation.count', -1) do
      delete :destroy, :id => @mispronunciation
    end

    assert_redirected_to mispronunciations_path
  end
end
