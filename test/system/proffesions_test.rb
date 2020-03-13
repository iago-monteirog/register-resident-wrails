require "application_system_test_case"

class ProffesionsTest < ApplicationSystemTestCase
  setup do
    @proffesion = proffesions(:one)
  end

  test "visiting the index" do
    visit proffesions_url
    assert_selector "h1", text: "Proffesions"
  end

  test "creating a Proffesion" do
    visit proffesions_url
    click_on "New Proffesion"

    fill_in "Name", with: @proffesion.name
    click_on "Create Proffesion"

    assert_text "Proffesion was successfully created"
    click_on "Back"
  end

  test "updating a Proffesion" do
    visit proffesions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @proffesion.name
    click_on "Update Proffesion"

    assert_text "Proffesion was successfully updated"
    click_on "Back"
  end

  test "destroying a Proffesion" do
    visit proffesions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proffesion was successfully destroyed"
  end
end
