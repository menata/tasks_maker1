class CreatePitems < ActiveRecord::Migration
  def change
    create_table :pitems do |t|
      t.string :pname
      t.timestamps
    end
  end
end
