class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamps null: false
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
