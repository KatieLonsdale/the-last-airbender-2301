class CharacterFacade
  def characters_by_nation(nation)
    characters = []
    page = 1
    5.times do 
      people = CharacterService.characters_by_nation(nation, page)
      people.each do |person|
        characters << Character.new(person)
      end
      page += 1
    end
    characters
  end
end