class CreateDiaryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :diary_categories do |t|
      t.references :user_id
      t.string     :name
      t.string     :color, limit: 6
      t.timestamps
    end
  end
end
