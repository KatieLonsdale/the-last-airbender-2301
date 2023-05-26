class Character
  attr_reader :id, :name, :photo, :enemies, :allies, :affiliation
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo = data[:photoUrl]
    @enemies = data[:enemies]
    @allies = data[:allies]
    @affiliation = data[:affiliation]
  end
end