class AddRequestersToRelationships < ActiveRecord::Migration[7.0]
  def change
    add_column :relationships, :requester_id, :integer
  end
end
