class Subject < ActiveRecord::Base

	has_many :student_subjects
	has_many :students, :through => :student_subjects
  belongs_to :mark

end
