class User < ApplicationRecord
    validates :email, uniqueness: true
    belongs_to :organization, optional: true
    validates :password, confirmation: {case_sensitive: true}
end
