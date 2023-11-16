class User < ApplicationRecord
    has_many :bookings
    has_many :restaurants, through: :bookings
    accepts_nested_attributes_for :bookings

    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :address, uniqueness: true
    validates :contact, presence: true
    validates :contact, uniqueness: true
end
