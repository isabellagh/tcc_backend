class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age 
      t.string :avatar 
      t.string :allergies
      t.string :special_needs
      t.belongs_to :user
      t.belongs_to :classroom

      t.timestamps
    end
  end
end
