class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.integer :unique_salesforce_id

      t.timestamps
    end
  end
end
