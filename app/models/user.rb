class User < ApplicationRecord
    validates :email, presence: true
    validates :name, presence: true
    validates :sex, presence: true
    validates :status, presence: true
end
