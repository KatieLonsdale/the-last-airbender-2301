require 'rails_helper'

RSpec.describe CharacterFacade do
  before(:each) do
    @cf = CharacterFacade.new
  end
  describe 'characters_by_nation' do
    it 'returns an array of characters' do
      expect(@cf.characters_by_nation("fire nation")).to be_all(Character)
      expect(@cf.characters_by_nation("fire nation")).to be_a(Array)
    end
  end
end