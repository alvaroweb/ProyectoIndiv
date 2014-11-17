class CreateTeacherTeacher2s < ActiveRecord::Migration
  def change
    create_table :teacher_teacher2s do |t|
      t.string :name
      t.string :surname
      t.string :phone

      t.timestamps
    end
  end
end
