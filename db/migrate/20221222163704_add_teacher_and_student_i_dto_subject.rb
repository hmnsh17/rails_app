class AddTeacherAndStudentIDtoSubject < ActiveRecord::Migration[6.1]

  def change
    add_column :subjects, :teacher_id, :integer
    add_column :subjects, :student_id, :integer
  end
end
