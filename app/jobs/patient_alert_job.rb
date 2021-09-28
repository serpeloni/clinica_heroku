class PatientAlertJob < ApplicationJob
  queue_as :default

  def perform(patient)
    puts "Paciente criado: #{patient.name}"
  end
end
