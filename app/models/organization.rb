class Organization < ApplicationRecord
    validates :name, presence: true
    validates :hourly_rate, presence:true
    has_many :users
end
