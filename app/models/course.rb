class Course < ApplicationRecord
    has_many :sections
    has_many :professors, through: :sections
    
    validates :name, presence: true
    validates :name, length: { minimum: 2}
    validates :name, uniqueness: true
    validates :department, presence: true
    validates :department, length: { minimum: 2}
    validates :hours, presence: true
    validates :hours, format: {with: /\A\d+\z/, message: "Positive Integers Only!"}
    
end
