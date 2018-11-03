class AddPessoaAndLugarToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :pessoa_id, :integer
    add_column :comentarios, :lugar_id, :integer
  end
end
