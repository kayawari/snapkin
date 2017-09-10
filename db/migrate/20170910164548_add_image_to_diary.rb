class AddImageToDiary < ActiveRecord::Migration[5.1]
  def change
    add_column :diaries, :image, :string
  end
end
