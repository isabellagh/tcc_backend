class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string :room_name
      t.integer :age 
      t.boolean :full, default: false

      t.timestamps
    end
  end
end
