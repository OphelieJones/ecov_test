class CreateNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :networks do |t|
      t.string :current_network
      t.references :user, foreign_key: true
      t.references :ride, foreign_key: true
    end
  end
end
