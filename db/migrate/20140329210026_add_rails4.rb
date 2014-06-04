class AddRails4 < ActiveRecord::Migration
  def change
    add_column :snippets, :rails4, :string
  end
end
