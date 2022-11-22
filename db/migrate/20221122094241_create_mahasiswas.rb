class CreateMahasiswas < ActiveRecord::Migration[7.0]
  def change
    create_table :mahasiswas do |t|
      t.string :nama
      t.string :alamat
      t.string :umur

      t.timestamps
    end
  end
end
