class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :tname
      t.string :priority
      t.boolean :done
      t.datetime :expires_at
      t.timestamps
    end
  end
end
