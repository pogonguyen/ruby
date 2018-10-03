class Student < ApplicationRecord
    has_many :enrollments
    has_many :sections, through: :enrollments
    
        validates :name, presence: true
        validates :name, length: { minimum: 1}
        validates :identification, presence: true
end
