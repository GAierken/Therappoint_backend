class Appointment < ApplicationRecord
    belongs_to :client, class_name: "User"
    belongs_to :provider, class_name: "User"

    validates :appoint_date, presence: true, uniqueness: true
    validates :client_id, presence: true
    validates :provider_id, presence: true
end
