require "rails_helper"

RSpec.feature "Simple visit and inscription", :type => :feature do
  scenario "User goes on home page" do
    visit "/"
    expect(page).to have_text("L'avocat au coeur de l'innovation")
  end
  scenario "User clicks on plus d'informations and redirected to prix page" do
    visit "/"

    click_link "Plus d'informations"
    expect(page).to have_text("Prix de l'Innovation")
  end
end