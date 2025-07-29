class AddDiscardedAtToPet < ActiveRecord::Migration[8.0]
  def change
    add_column :pets, :discarded_at, :datetime
    add_index :pets, :discarded_at
  end
end
