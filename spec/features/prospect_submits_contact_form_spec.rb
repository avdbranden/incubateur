require 'rails_helper'

feature 'Prospect submits contact form' do
  given!(:prospect) { 
    Prospect.new(email: "avdbranden@gmail.com", first_name: "Adrien",
        last_name: "van den Branden", function: "legal engineer") 
  }

  scenario 'with valid credentials' do
    visit '/contact'
    fill_in 'Email', with: prospect.email
    fill_in 'Prénom', with: prospect.first_name
    fill_in 'Nom', with: prospect.last_name
    fill_in 'Fonction et Association-Cabinet-Société', with: prospect.function
    click_button 'Create Prospect'
    expect(page).to have_content "Contacts"
  end   
end