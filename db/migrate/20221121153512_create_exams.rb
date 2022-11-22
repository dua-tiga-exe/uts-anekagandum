class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.string :nama
      t.string :alamat
      t.string :profesi

      t.timestamps
    end
  end
end
