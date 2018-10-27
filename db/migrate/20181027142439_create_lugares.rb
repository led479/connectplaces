class CreateLugares < ActiveRecord::Migration[5.2]
  def change
    create_table :lugares do |t|
      t.string :nome
      t.string :descricao
      t.string :cidade
      t.string :estado
      t.string :tipo

      t.timestamps
    end
  end
end
