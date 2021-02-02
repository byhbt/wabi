class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.string :vendor
      t.text :body
      t.text :tag
      t.boolean :published

      t.timestamps
    end
  end
end
