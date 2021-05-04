class Room
  attr_reader :number, :capacity, :patients
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = []
  end

  def add_patient(patient)
    @patients << patient
    patient.room = self
  end

end

# Relacionamento 1-N

# room has many patients
# patient belongs to room

# Sempre salvo o identificador do lado do `belongs to` (No nosso caso é o model `Patient`)

# room_42 = Room.new(number: 42, capacity: 5)
# roberto = Patient.new(name: 'Roberto', age: 25)
# room_42.add_patient(roberto)

# room_42.patients.count # => 1

# gianpaolo = Patient.new(name: 'Gianpaolo', age: 26)
# room_42.add_patient(gianpaolo)

# room_42.patients.count # => 2

# room_42.patient.first.name # => 'Roberto'
# room_42.patient.last.name # => 'Gianpaolo'



