class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence:true, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true

    has_many :organizations
    has_many :shifts
end
