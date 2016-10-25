require "rails_helper"

RSpec.feature "Simple visit and inscription", :type => :feature do
  scenario "User goes on home page" do
    visit "/"
    expect(page).to have_text("Electrochoc Numérique")
  end
  scenario "User clicks on programme and redirected to programme page" do
    visit "/"

    click_link "Voir le programme complet"
    expect(page).to have_text("Programme provisoire")
  end
  scenario "User clicks on devenez partenaire and redirected to sponsors page" do
    visit "/"

    click_link "Devenez partenaire"
    expect(page).to have_text("Ces partenaires nous soutiennent")
  end
end