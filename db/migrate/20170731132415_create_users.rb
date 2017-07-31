class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :email,            null: false, limit: 100
      t.string  :crypted_password, null: false
      t.string  :salt,             null: false
      t.string  :first_name,       null: false
      t.string  :last_name,        null: false
      t.string  :nick_name
      t.string  :default_lat, null: false, comment: 'デフォルトの緯度'
      t.string  :default_lng, null: false, comment: 'デフォルトの経度'
      t.timestamps
    end
  end
end
