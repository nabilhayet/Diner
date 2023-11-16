class Restaurant < ApplicationRecord
    has_many :bookings
    has_many :users, through: :bookings

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :street, presence: true
    validates :street, uniqueness: true
    validates :city, presence: true
    validates :zipcode, presence: true
    validates :zipcode, numericality: { only_integer: true }
    validates :zipcode, length: { is: 5 }
end
