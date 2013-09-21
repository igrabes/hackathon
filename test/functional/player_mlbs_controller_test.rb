require 'test_helper'

class PlayerMlbsControllerTest < ActionController::TestCase
  setup do
    @player_mlb = player_mlbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_mlbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_mlb" do
    assert_difference('PlayerMlb.count') do
      post :create, player_mlb: {  }
    end

    assert_redirected_to player_mlb_path(assigns(:player_mlb))
  end

  test "should show player_mlb" do
    get :show, id: @player_mlb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_mlb
    assert_response :success
  end

  test "should update player_mlb" do
    put :update, id: @player_mlb, player_mlb: {  }
    assert_redirected_to player_mlb_path(assigns(:player_mlb))
  end

  test "should destroy player_mlb" do
    assert_difference('PlayerMlb.count', -1) do
      delete :destroy, id: @player_mlb
    end

    assert_redirected_to player_mlbs_path
  end
end
