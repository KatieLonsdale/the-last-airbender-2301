require 'rails_helper'

RSpec.describe 'search index page' do
  describe 'when I visit the search page after selecting a nation' do
    it 'has the total number of people who live in the nation' do
      visit root_path
      select "Fire Nation", from: "nation"
      click_button("Search For Members")

      within("#residents") do
        expect(page).to have_content("Residents: 97")
      end
    end
    it 'has a list of the first 25 members of the Fire Nation' do
      visit root_path
      select "Fire Nation", from: "nation"
      click_button("Search For Members")
      within("#character-5cf5679a915ecad153ab68fd") do
        expect(page).to have_content("Name: Chan (Fire Nation admiral)")
      end
    end
    it 'has a list of allies and enemies' do
      visit root_path
      select "Fire Nation", from: "nation"
      click_button("Search For Members")
      within("#character-5cf5679a915ecad153ab68fd") do
        within("#allies") do
          expect(page).to have_content("Ozai")
        end
        within("#enemies") do
          expect(page).to have_content("Earth Kingdom")
        end
      end

    end
    it 'lists their affiliation' do
      visit root_path
      select "Fire Nation", from: "nation"
      click_button("Search For Members")
      within("#character-5cf5679a915ecad153ab68fd") do
        within("#affiliation") do
          expect(page).to have_content("Fire Nation Navy")
        end
      end
    end
  end
end