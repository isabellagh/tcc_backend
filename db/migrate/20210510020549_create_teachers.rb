class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age 
      t.string :image
      t.belongs_to :classroom, index: true, foreign_key: true

      t.timestamps
    end
  end
end
