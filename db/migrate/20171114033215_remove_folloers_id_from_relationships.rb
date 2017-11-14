class RemoveFolloersIdFromRelationships < ActiveRecord::Migration[5.1]
  def change
  	remove_column :relationships, :folloers_id
  end
end
