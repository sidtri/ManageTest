class AddContentToTest < ActiveRecord::Migration
  def change
    add_column :tests, :content, :string
  end
end
