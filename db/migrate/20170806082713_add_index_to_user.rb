class AddIndexToUser < ActiveRecord::Migration[5.1]
  def change
    #NOTE: メールアドレスの一意性を担保するためにオプションunique追加
    add_index :users, :email, unique: true
  end
end
