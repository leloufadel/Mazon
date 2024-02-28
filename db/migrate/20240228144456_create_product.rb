class CreateProduct < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :subtitle
      t.decimal :current_price
      t.decimal :previous_price
      t.string :image
      t.text :pro_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
