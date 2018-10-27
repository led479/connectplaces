class AddEnderecoToLugares < ActiveRecord::Migration[5.2]
  def change
    add_column :lugares, :endereco, :string
  end
end
