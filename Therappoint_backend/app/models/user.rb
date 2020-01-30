class User < ApplicationRecord
    has_many :providers, through: :prov_appoints, source: :provider 
    has_many :prov_appoint, foreign_key: :client_id, class_name: "User", dependent: :destroy

    has_many :clients, through: :cli_appoints, source: :client 
    has_many :cli_appoints, foreign_key: :provider_id, class_name: "User", dependent: :destroy
end
