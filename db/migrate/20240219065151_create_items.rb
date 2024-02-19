class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name                     , null: false, default: ""
      t.text :info
      t.string :post_data                , null: false
      t.integer :grade_id                , null: false
      t.integer :category_id             , null: false
      t.references :user                 , null: false, foreign_key: true
      t.timestamps
    end
  end
end
