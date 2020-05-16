class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :password_digest, :username, :address, :email, :phone_number, :img_url, :specialty, :board_certified
  has_many :provider_appointments, foreign_key: :client_id, class_name: 'Appointment', dependent: :destroy
  has_many :providers, through: :provider_appointments

  has_many :client_appointments, foreign_key: :provider_id, class_name: "Appointment", dependent: :destroy
  has_many :clients, through: :client_appointments

end
