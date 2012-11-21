class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :email
      t.text :body
      t.references :site

      t.timestamps
    end
    add_index :comments, :site_id
  end
end
