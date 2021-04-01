class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :is_public
      t.belongs_to :category, foreign_key: true, null: true

      t.timestamps
    end
  end
end
