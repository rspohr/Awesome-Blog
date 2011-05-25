class AddMetadataToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :metadata, :string
  end

  def self.down
    remove_column :posts, :metadata
  end
end
