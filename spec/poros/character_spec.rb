require 'rails_helper'

RSpec.describe Character do
  before(:each) do
    data = {
      "_id": "5cf5679a915ecad153ab68cc",
      "allies": [
          "Fire Nation"
      ],
      "enemies": [
          "Aang"
      ],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
      "name": "Afiko",
      "affiliation": "Fire Nation"
  }

    @character = Character.new(data)
  end
  describe 'initialize' do
    it 'exists and has attributes' do
      expect(@character).to be_a Character
      expect(@character.name)
      expect(@character.photo)
      expect(@character.enemies)
      expect(@character.allies)
      expect(@character.affiliation)
    end
  end
end