class User < ApplicationRecord
   
     has_many :provider_appointments, foreign_key: :client_id, class_name: 'Appointment'
     has_many :providers, through: :provider_appointments

     has_many :client_appointments, foreign_key: :provider_id, class_name: "Appointment"
     has_many :clients, through: :client_appointments

end
