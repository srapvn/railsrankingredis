require 'test_helper'

class RankingsControllerTest < ActionController::TestCase
  setup do
    @ranking = rankings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ranking" do
    assert_difference('Ranking.count') do
      post :create, ranking: { honor: @ranking.honor, level: @ranking.level, military: @ranking.military, name: @ranking.name, userid: @ranking.userid, winpercentage: @ranking.winpercentage, xp: @ranking.xp }
    end

    assert_redirected_to ranking_path(assigns(:ranking))
  end

  test "should show ranking" do
    get :show, id: @ranking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ranking
    assert_response :success
  end

  test "should update ranking" do
    put :update, id: @ranking, ranking: { honor: @ranking.honor, level: @ranking.level, military: @ranking.military, name: @ranking.name, userid: @ranking.userid, winpercentage: @ranking.winpercentage, xp: @ranking.xp }
    assert_redirected_to ranking_path(assigns(:ranking))
  end

  test "should destroy ranking" do
    assert_difference('Ranking.count', -1) do
      delete :destroy, id: @ranking
    end

    assert_redirected_to rankings_path
  end
end
