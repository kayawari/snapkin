class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :email,            null: false, limit: 100
      t.string  :password_digest,  null: false
      t.string  :first_name,       null: false
      t.string  :last_name,        null: false
      t.string  :nick_name,        null: false
      t.string  :default_lat, null: false, default: 0, comment: 'デフォルトの緯度'
      t.string  :default_lng, null: false, default: 0, comment: 'デフォルトの経度'
      t.timestamps
    end
  end
end
