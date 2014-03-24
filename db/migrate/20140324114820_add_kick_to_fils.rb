class AddKickToFils < ActiveRecord::Migration
  def change
    add_column :fils, :kick, :string
  end
end
