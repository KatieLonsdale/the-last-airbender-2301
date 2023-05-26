class CharacterService
  def self.characters_by_nation(nation, page)
    response = Faraday.new.get("https://last-airbender-api.fly.dev/api/v1/characters?page=#{page}&affiliation=#{nation}")
    people = JSON.parse(response.body, symbolize_names: true)
  end
end