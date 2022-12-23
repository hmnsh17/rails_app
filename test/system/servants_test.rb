require "application_system_test_case"

class ServantsTest < ApplicationSystemTestCase
  setup do
    @servant = servants(:one)
  end

  test "visiting the index" do
    visit servants_url
    assert_selector "h1", text: "Servants"
  end

  test "creating a Servant" do
    visit servants_url
    click_on "New Servant"

    fill_in "Name", with: @servant.name
    fill_in "Phone", with: @servant.phone
    click_on "Create Servant"

    assert_text "Servant was successfully created"
    click_on "Back"
  end

  test "updating a Servant" do
    visit servants_url
    click_on "Edit", match: :first

    fill_in "Name", with: @servant.name
    fill_in "Phone", with: @servant.phone
    click_on "Update Servant"

    assert_text "Servant was successfully updated"
    click_on "Back"
  end

  test "destroying a Servant" do
    visit servants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servant was successfully destroyed"
  end
end
