class StudentTeacher < ActiveRecord::Migration[7.2]
  def change
    create_table :students_teachers do |t|
      t.belongs_to :students
      t.belongs_to :teacher
    end
  end
end