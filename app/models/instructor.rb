class Instructor < ApplicationRecord
  has_many :courses
  has_many :publications
  validates_presence_of :name,:email,:bio
end
