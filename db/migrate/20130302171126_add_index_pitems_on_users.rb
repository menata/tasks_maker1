class AddIndexPitemsOnUsers < ActiveRecord::Migration
  def change
       add_column :pitems, :user_id, :integer
       add_index :pitems, :user_id
  end
end
