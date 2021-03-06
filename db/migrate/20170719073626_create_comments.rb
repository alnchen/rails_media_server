class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.integer :author_id, null: false
      t.integer :sub_id, null: false
      t.timestamps
    end
  end
end
