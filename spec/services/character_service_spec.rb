require 'rails_helper'

RSpec.describe CharacterService do
  describe 'characters_by_nation' do
    it 'returns characters affiliated with given nation' do
      characters = CharacterService.characters_by_nation("fire nation", 1)
      character = characters.first
      expect(character[:_id]).to eq("5cf5679a915ecad153ab68fd")
      expect(character[:allies]).to eq(["Ozai"])
      expect(character[:enemies]).to eq(["Earth Kingdom"])
      expect(character[:name]).to eq("Chan (Fire Nation admiral)")
      expect(character[:affiliation]).to eq("Fire Nation Navy")
    end
  end
end