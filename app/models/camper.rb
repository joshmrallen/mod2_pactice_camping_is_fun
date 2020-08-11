class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    validates :name, :age, presence: { message: "can't be blank." }
    validates :name, uniqueness: { message: "already exists." }
    validates :age, inclusion: {in: 8..18, message: "not within correct age range." }
end
