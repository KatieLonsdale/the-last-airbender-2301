class CharacterFacade
  def characters_by_nation(nation)
    characters = []
    page = 1
    5.times do 
      response = Faraday.new.get("https://last-airbender-api.fly.dev/api/v1/characters?page=#{page}&affiliation=#{nation}")
      people = JSON.parse(response.body, symbolize_names: true)
      people.each do |person|
        characters << Character.new(person)
      end
      page += 1
    end
    characters
  end
end