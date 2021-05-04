class Patient
  attr_reader :name, :age
  attr_accessor :id, :room

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
  end
end

# roberto = Patient.new('Roberto', 25)

# roberto = Patient.new({ name: 'Roberto' })
# roberto.name # => 'roberto'

# roberto = Patient.new(name: 'Roberto', age: 25)

# room_42 = Room.new(number: 42, capacity: 5)
# roberto.room = room_42

