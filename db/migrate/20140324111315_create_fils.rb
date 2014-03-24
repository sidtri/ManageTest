class CreateFils < ActiveRecord::Migration
  def change
    create_table :fils do |t|
      t.integer :project_id
      t.string :srs
      t.string :brs
      t.string :tc
      t.string :tp

      t.timestamps
    end
  end
end
