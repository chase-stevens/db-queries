class AddJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.text :entry
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
