class Pokemon

  @@all = []

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type, db) VALUES (?, ?, ?)", name, type, db)
  end

end
