class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text :content
      t.text :summary
      t.integer :view_time

      t.timestamps
    end
  end
end
