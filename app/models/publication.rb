class Publication < ApplicationRecord
belongs_to :instructor
validates_presence_of :instructor_id
end
