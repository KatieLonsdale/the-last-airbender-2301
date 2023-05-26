class Character
  attr_reader :name, :photo, :enemies, :allies, :affiliation
  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @enemies = data[:enemies]
    @allies = data[:allies]
    @affiliation = data[:affiliation]
  end
end