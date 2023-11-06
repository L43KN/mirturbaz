require "application_system_test_case"

class CampsTest < ApplicationSystemTestCase
  setup do
    @camp = camps(:one)
  end

  test "visiting the index" do
    visit camps_url
    assert_selector "h1", text: "Camps"
  end

  test "should create camp" do
    visit camps_url
    click_on "New camp"

    fill_in "City", with: @camp.city_id
    fill_in "Name", with: @camp.name
    click_on "Create Camp"

    assert_text "Camp was successfully created"
    click_on "Back"
  end

  test "should update Camp" do
    visit camp_url(@camp)
    click_on "Edit this camp", match: :first

    fill_in "City", with: @camp.city_id
    fill_in "Name", with: @camp.name
    click_on "Update Camp"

    assert_text "Camp was successfully updated"
    click_on "Back"
  end

  test "should destroy Camp" do
    visit camp_url(@camp)
    click_on "Destroy this camp", match: :first

    assert_text "Camp was successfully destroyed"
  end
end
