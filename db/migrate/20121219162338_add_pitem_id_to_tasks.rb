class AddPitemIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :pitem_id, :integer
    add_index :tasks, :pitem_id
  end
end
