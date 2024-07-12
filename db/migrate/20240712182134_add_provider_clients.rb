class AddProviderClients < ActiveRecord::Migration[7.0]
  def change
    create_table :provider_clients do |t|
      t.references :provider, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
    add_index :provider_clients, [:provider_id, :client_id], unique: true
  end
end
