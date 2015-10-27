feature "Enter names" do
  scenario "Submitting Name1 Name2" do
      visit('/')
      fill_in('Name1', with: 'Rob')
      fill_in('Name2', with: 'Pablo')
      click_button 'Submit'
      expect(page).to have_content 'Rob vs. Pablo'
    end
end