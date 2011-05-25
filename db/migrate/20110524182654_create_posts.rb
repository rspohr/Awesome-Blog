class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.date :submit_date
      t.text :message
      t.string :tag


      t.timestamps
      
    add_column :posts, :metadata, :string
    
    
    end
  end

  def self.down
    remove_column :posts, :metadata
    drop_table :posts
  end
end
