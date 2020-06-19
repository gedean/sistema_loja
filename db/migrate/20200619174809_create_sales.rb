class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :amount
      t.string :price
      t.string :total

      t.timestamps
    end
  end
end
