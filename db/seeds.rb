# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.last)

require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
JoinTableDoctorSpecialty.destroy_all
Specialty.destroy_all

#100.times do
City.create(city: "Nantes")

Specialty.create(specialty: "Anesthesit")
Specialty.create(specialty: "Cardiologue")

Doctor.create(first_name: "Jean-Marie", last_name: "Hubert", zip_code: "44000", city_id: City.first.id)

JoinTableDoctorSpecialty.create(doctor_id: Doctor.first.id, specialty_id: Specialty.first.id)
JoinTableDoctorSpecialty.create(doctor_id: Doctor.first.id, specialty_id: Specialty.last.id)

Patient.create(first_name: "Claude", last_name: "Dubois", city_id: City.first.id)

Appointment.create(date: Time.now, doctor_id: Doctor.first.id, patient_id: Patient.first.id, city_id: City.first.id)

