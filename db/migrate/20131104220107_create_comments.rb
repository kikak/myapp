class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :email
      t.references :article, index: true

      t.timestamps
    end
  end
end
