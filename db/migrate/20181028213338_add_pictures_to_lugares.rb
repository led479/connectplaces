class AddPicturesToLugares < ActiveRecord::Migration[5.2]
  def change
    add_column :lugares, :pictures, :json
  end
end
