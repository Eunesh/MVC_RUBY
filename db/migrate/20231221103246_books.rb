class Books < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title, limit: 32, null: false
      t.string :url
      t.float :price
      t.text :description
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
