class CreateDiaryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :diary_categories do |t|
      t.references :diary, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
