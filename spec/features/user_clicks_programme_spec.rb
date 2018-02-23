require "rails_helper"

RSpec.feature "Simple visit and inscription", :type => :feature do
  scenario "User goes on home page" do
    visit "/"
    expect(page).to have_text("L'avocat au coeur de l'innovation")
  end
  scenario "User clicks on contactez-nous and redirected to contacts page" do
    visit "/"

    click_link "Contactez-nous !"
    expect(page).to have_text("Contactez l'Incubateur")
  end
end