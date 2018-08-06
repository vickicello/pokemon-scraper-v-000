class Pokemon

  attr_accessor :name, :type, :db, :id

  def initialize(name:, type:, db:, id:)
    self.name = name
    self.type = type
    self.db = db
    self.id = id
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)

  end

end
