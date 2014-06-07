class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :content
      t.string :category
      t.integer :num_value
      t.references :client, index: true

      t.timestamps
    end
  end
end
