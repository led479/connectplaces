class AddPicturesToLugares < ActiveRecord::Migration[5.2]
  def change
    add_column :lugares, :picture, :string
  end
end
