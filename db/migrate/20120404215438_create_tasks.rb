class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, :null => false
      t.boolean :completed, :null => false, :default => false
      t.datetime :completed_at

      t.timestamps
    end
  end
end
