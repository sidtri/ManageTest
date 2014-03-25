class CreateAcknowledges < ActiveRecord::Migration
  def change
    create_table :acknowledges do |t|
      t.integer :project_id
      t.integer :request_id
      t.integer :docs
      t.integer :time
      t.integer :resources
      t.string :content

      t.timestamps
    end
  end
end
