class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :project_id
      t.string :dev
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
