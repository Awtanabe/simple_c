require 'test_helper'

class GoldPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gold_place = gold_places(:one)
  end

  test "should get index" do
    get gold_places_url
    assert_response :success
  end

  test "should get new" do
    get new_gold_place_url
    assert_response :success
  end

  test "should create gold_place" do
    assert_difference('GoldPlace.count') do
      post gold_places_url, params: { gold_place: { name: @gold_place.name, prefecture: @gold_place.prefecture } }
    end

    assert_redirected_to gold_place_url(GoldPlace.last)
  end

  test "should show gold_place" do
    get gold_place_url(@gold_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_gold_place_url(@gold_place)
    assert_response :success
  end

  test "should update gold_place" do
    patch gold_place_url(@gold_place), params: { gold_place: { name: @gold_place.name, prefecture: @gold_place.prefecture } }
    assert_redirected_to gold_place_url(@gold_place)
  end

  test "should destroy gold_place" do
    assert_difference('GoldPlace.count', -1) do
      delete gold_place_url(@gold_place)
    end

    assert_redirected_to gold_places_url
  end
end
