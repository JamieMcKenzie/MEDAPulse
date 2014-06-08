class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content, null: false
      t.string :status, null: false
      t.date :by_when, null: false
      t.references :goal, index: true

      t.timestamps
    end
  end
end
