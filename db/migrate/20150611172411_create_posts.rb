class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :noun
      t.string :adjective
      t.string :content
      t.string :other
      t.string :author

      t.timestamps null: false
    end
  end
end
