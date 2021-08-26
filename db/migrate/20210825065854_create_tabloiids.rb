class CreateTabloiids < ActiveRecord::Migration[6.1]
  def change
    create_table :tabloiids do |t|
      t.string :file_name
      t.string :file_path
      t.datetime :date
      t.string :image_path

      t.timestamps
    end
  end
end
