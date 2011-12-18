class Student < ActiveRecord::Base

	has_many :student_subjects
	has_many :subjects, :through => :student_subjects

  scope :find_seat_no, lambda { |seat_no|
		where("students.seat_no like ?", '%'+"#{seat_no}"+'%')
	}


end
