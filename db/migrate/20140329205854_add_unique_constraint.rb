class AddUniqueConstraint < ActiveRecord::Migration
  def change
    add_index :snippets, :trigger, unique: true
  end
end
