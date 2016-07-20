require 'rails_helper'

describe '/users', js: true do
  fixtures :users
  before do
    visit '/users'
  end

  it 'has correct title' do
    expect(page).to have_css("h1.page-title", text: "Users")
  end

  it 'render user name' do
    expected_username = 'user1'
    expect(page).to have_text(expected_username)
  end
end