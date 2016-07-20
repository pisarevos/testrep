require 'rails_helper'

describe '/messages', js: true do

  context 'logged user' do
    let(:user) { FactoryGirl.create :user }
    before do
      login_as(user, :scope => :user)
    end

    it 'can see messages menu item' do
      visit('/')
      expect(page).to have_css('ul.nav li a', text: 'Messages')
      gets
    end
  end
end