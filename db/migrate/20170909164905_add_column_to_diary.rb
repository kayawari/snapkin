class AddColumnToDiary < ActiveRecord::Migration[5.1]
  def change
    add_reference :diaries, :user
  end
end
