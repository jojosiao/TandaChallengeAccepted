class Organization < ApplicationRecord
    validates :name, presence: true
    validates :hourly_rate, presence: true
    has_many :users, foreign_key: true
    has_many :shifts, foreign_key: true
end
