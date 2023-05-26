require 'rails_helper'

RSpec.describe 'search index page' do
  describe 'when I visit the search page after selecting a nation' do
    it 'has the total number of people who live in the nation' do
      visit root_path
      select "Fire Nation", from: "nation"
      click_button("Search For Members")

      within("#residents") do
        expect(page).to have_content("Residents: 100")
      end
    end
    it 'has a list of the first 25 members of the Fire Nation' do
      visit root_path
      select "Fire Nation", from: "nation"
      click_button("Search For Members")

        expect(page).to have_content("Name: Afiko")
    end
    xit 'has a list of allies and enemies' do

    end
    xit 'lists their affiliations' do

    end
  end
end