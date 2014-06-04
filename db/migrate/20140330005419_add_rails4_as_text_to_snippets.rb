class AddRails4AsTextToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :rails4, :text
  end
end
