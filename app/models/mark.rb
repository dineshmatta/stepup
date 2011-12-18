class Mark < ActiveRecord::Base

	belongs_to :student
  belongs_to :subject

  scope :find_marks, lambda { |subject_id, student_id|
    joins("join subjects on subjects.id = marks.subject_id").
    where("marks.subject_id = ? AND marks.student_id = ?", subject_id, student_id)
  }

end
