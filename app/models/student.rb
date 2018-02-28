class Student < ApplicationRecord
has_many :registrations
has_many :courses,through: :registrations
validates_presence_of :name,:email,:major,:dob
validates_uniqueness_of :email
belongs_to :city
end
