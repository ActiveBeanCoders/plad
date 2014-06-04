class RemoveRails4FromSnippets < ActiveRecord::Migration
  def change
    remove_column :snippets, :rails4, :string
  end
end
