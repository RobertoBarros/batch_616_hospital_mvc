require_relative '../views/appointments_view'

class AppointmentsController
  def initialize(appointment_repository, patient_repository, doctor_repository)
    @appointment_repository = appointment_repository
    @patient_repository = patient_repository
    @doctor_repository = doctor_repository
    @view = AppointmentsView.new
    @patients_view = PatientsView.new
    @doctors_view = DoctorsView.new
  end

  def create
    patients = @patient_repository.all
    @patients_view.list(patients)

    patient_id = @patients_view.ask_patient_id
    patient = @patient_repository.find_by_id(patient_id)

    doctors = @doctor_repository.all
    @doctors_view.list(doctors)

    doctor_id = @doctors_view.ask_doctor_id
    doctor = @doctor_repository.find_by_id(doctor_id)

    date = @view.ask_date

    appointment = Appointment.new(date: date, patient: patient, doctor: doctor)
    @appointment_repository.add(appointment)

  end

  def list
    appointments = @appointment_repository.all
    @view.list(appointments)
  end

end
