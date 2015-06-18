class CreateShits < ActiveRecord::Migration
  def change
    create_table :shits do |t|
      t.string :content, default: ""
      t.text :reason, default: ""
      t.string :author, default: ""
      t.boolean :featured, default: false

      t.timestamps null: false
    end
  end
end
