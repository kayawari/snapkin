class ChangeDatatypeDiaries < ActiveRecord::Migration[5.1]
  def change
    change_column :diaries, :lat, 'float USING CAST(lat AS float)'
    change_column :diaries, :lng, 'float USING CAST(lng AS float)'
  end
end
