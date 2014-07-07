require 'rails_helper'

feature 'Filling in a time input' do
  let(:time_input) { 'test1' }

  scenario 'It works the first time', :js do
    visit root_path

    fill_in time_input, with: '9:00AM'
    expect(page).to have_field(time_input, with: '09:00')
  end

  scenario 'It fails the second time', :js do
    visit root_path

    fill_in time_input, with: '9:00AM'
    expect(page).to have_field(time_input, with: '09:00')
  end
end
