class AddUserIdToClients < ActiveRecord::Migration
  def change
    change_table :clients do |t|
      t.belongs_to :user
    end
  end
end
