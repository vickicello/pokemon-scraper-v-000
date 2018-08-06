class Pokemon

  attr_accessor :name, :type, :db, :id, :hp

  def initialize(name:, type:, db:, id:)
    self.name = name
    self.type = type
    self.db = db
    self.id = id
    self.hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    self.new(id: pokemon_data[0], name: pokemon_data[1], type: pokemon_data[2], db: db, hp: pokemon_data[3] )
  end

end
