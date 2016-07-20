require 'rails_helper'

describe '/users', js: true do
  fixtures :users

  context 'guest ' do
    before do
      visit '/users'
    end

    it 'see correct title' do
      expect(page).to have_css("h1.page-title", text: "Users")
    end

    it 'see username of user1' do
      expected_username = 'user1'
      expect(page).to have_text(expected_username)
    end
  end

  context 'logged user' do
    before do
      visit '/'
      click_on 'Login'
      fill_in 'Email', with: 'user1@email.com'
      fill_in 'Password', with: '111111'
      click_on "Log in"
      click_on "Users"
    end



    it 'see correct title' do
      expect(page).to have_css("h1.page-title", text: "Users")
    end

    it 'see username of user1' do
      expected_username = 'user1'
      expect(page).to have_text(expected_username)
    end
  end

end