class AppointmentsView

  def ask_date
    puts "Enter appointment date (yyyy-mm-dd): "
    gets.chomp
  end

  def list(appointments)
    appointments.each do |appointment|
      puts "#{appointment.date} - Doctor: #{appointment.doctor.name} - Patient: #{appointment.patient.name}"
    end
  end

end
