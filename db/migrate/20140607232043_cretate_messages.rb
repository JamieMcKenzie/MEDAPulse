class CretateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :client
      t.belongs_to :step

      t.date :date
      t.string :content
      t.boolean :send_attempted, default: false
      t.boolean :send_successful

      t.timestamps
    end
  end
end
