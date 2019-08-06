require "application_system_test_case"

class GoldPlacesTest < ApplicationSystemTestCase
  setup do
    @gold_place = gold_places(:one)
  end

  test "visiting the index" do
    visit gold_places_url
    assert_selector "h1", text: "Gold Places"
  end

  test "creating a Gold place" do
    visit gold_places_url
    click_on "New Gold Place"

    fill_in "Name", with: @gold_place.name
    fill_in "Prefecture", with: @gold_place.prefecture
    click_on "Create Gold place"

    assert_text "Gold place was successfully created"
    click_on "Back"
  end

  test "updating a Gold place" do
    visit gold_places_url
    click_on "Edit", match: :first

    fill_in "Name", with: @gold_place.name
    fill_in "Prefecture", with: @gold_place.prefecture
    click_on "Update Gold place"

    assert_text "Gold place was successfully updated"
    click_on "Back"
  end

  test "destroying a Gold place" do
    visit gold_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gold place was successfully destroyed"
  end
end
