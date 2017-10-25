class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
      t.string      :title,    null: false
      t.text        :content,  null: false
      t.string      :lat,      null: false, comment: '緯度'
      t.string      :lng,      null: false, comment: '経度'
      t.datetime    :journey_time
      t.timestamps
    end
  end
end
