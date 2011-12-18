class CreateStudentSubjects < ActiveRecord::Migration
  def up
    create_table :student_subjects do |t|
      t.integer :student_id
			t.integer :subject_id

      t.timestamps
    end
  end

  def down
		drop_table :student_subjects
  end
end
