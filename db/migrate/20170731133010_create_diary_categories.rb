class CreateDiaryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :diary_categories do |t|
      t.references :diary
      t.string     :name
      t.timestamps
    end
  end
end
