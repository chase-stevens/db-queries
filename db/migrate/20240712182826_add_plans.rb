class AddPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :tier
      t.references :client_provider, foreign_key: true

      t.timestamps
    end
    add_index :plans, :provider_client_id
  end
end
