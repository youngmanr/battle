require 'spec_helper'

feature "Enter names" do
  scenario "Submitting Name1 Name2" do
      visit('/')
      fill_in :player_1_name, with: 'Rob'
      fill_in :player_2_name, with: 'Pablo'
      click_button 'Submit'
      expect(page).to have_content 'Rob vs. Pablo'
    end
end