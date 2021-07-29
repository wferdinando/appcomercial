class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :complemento
      t.string :cidade
      t.string :uf
      t.string :telefone

      t.timestamps
    end
  end
end
