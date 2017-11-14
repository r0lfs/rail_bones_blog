class ChangeFollowersInRelationships < ActiveRecord::Migration[5.1]
  def self.down
  	remove_column :relationships, :folloer_id
  end
end
