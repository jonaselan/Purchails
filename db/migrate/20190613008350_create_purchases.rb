class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :amount
      t.string :status
      t.references :member, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
