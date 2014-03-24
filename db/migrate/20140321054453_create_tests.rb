class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :project_id
      t.integer :initiate
      t.string :name
      t.string :environment

      t.timestamps
    end
  end
end
