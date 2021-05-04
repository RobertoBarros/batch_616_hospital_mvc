class Appointment
  attr_reader :date, :patient, :doctor
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @date = attributes[:date]
    @doctor = attributes[:doctor]
    @patient = attributes[:patient]
  end
end
