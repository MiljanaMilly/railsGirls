require "application_system_test_case"

class Idea2sTest < ApplicationSystemTestCase
  setup do
    @idea2 = idea2s(:one)
  end

  test "visiting the index" do
    visit idea2s_url
    assert_selector "h1", text: "Idea2s"
  end

  test "creating a Idea2" do
    visit idea2s_url
    click_on "New Idea2"

    fill_in "Description", with: @idea2.description
    fill_in "Name", with: @idea2.name
    fill_in "Picture", with: @idea2.picture
    click_on "Create Idea2"

    assert_text "Idea2 was successfully created"
    click_on "Back"
  end

  test "updating a Idea2" do
    visit idea2s_url
    click_on "Edit", match: :first

    fill_in "Description", with: @idea2.description
    fill_in "Name", with: @idea2.name
    fill_in "Picture", with: @idea2.picture
    click_on "Update Idea2"

    assert_text "Idea2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Idea2" do
    visit idea2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idea2 was successfully destroyed"
  end
end
