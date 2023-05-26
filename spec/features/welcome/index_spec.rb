require 'rails_helper'

RSpec.describe 'landing page' do
  describe 'As a visitor, when I visit the landing page' do
    it 'select "Fire Nation to go to search page' do
      visit root_path

      select "Fire Nation", from: "nation"
      click_button("Search For Members")

      expect(current_path).to eq(search_path)
    end
  end
end