class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :bash4
      t.text :winshell
      t.text :powershell
      t.text :vbs
      t.text :vim
      t.text :python3
      t.text :java
      t.text :js
      t.text :groovy
      t.text :c
      t.text :cpp
      t.text :scala
      t.text :erlang
      t.text :ruby2
      t.text :clojure
      t.string :trigger
      t.string :links
      t.string :pre
      t.string :category
      t.string :desc

      t.timestamps
    end
  end
end
