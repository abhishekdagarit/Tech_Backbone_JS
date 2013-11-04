class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :body
      t.datetime :due
      t.boolean :complete

      t.timestamps
    end
  end
end
