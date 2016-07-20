require 'rails_helper'

describe '/users', js: true do
  before do
    visit '/users'
  end

  it 'has correct title' do
    expect(page).to have_css("h1.page-title", text: "Users")
  end

  it 'render all users' do
    expect(page).to have_css("h1.page-title", text: "Users")
  end
end