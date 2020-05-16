class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :appoint_date, :client_id, :provider_id
  
end
