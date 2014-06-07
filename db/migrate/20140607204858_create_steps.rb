class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content
      t.string :status
      t.date :by_when
      t.references :goal, index: true

      t.timestamps
    end
  end
end
