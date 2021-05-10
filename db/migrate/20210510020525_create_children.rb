class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age 
      t.string :avatar 
      t.boolean :allergies, default: false
      t.boolean :special_needs, default: false
      t.integer :teacher_id
      t.integer :classroom_id

      t.timestamps
    end
  end
end
