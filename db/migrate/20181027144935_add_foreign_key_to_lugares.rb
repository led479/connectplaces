class AddForeignKeyToLugares < ActiveRecord::Migration[5.2]
  def change
    add_column :lugares, :pessoa_id, :integer
  end
end
