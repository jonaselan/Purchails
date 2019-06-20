class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :slug
      t.boolean :visible
      t.datetime :published_at
      t.string :observations
      t.text :summary
      t.references :author, null: false, foreign_key: true
      t.references :itemable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
