class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :imagem
      t.string :nome
      t.string :descricao
      t.integer :quantidade
      t.decimal :preco
      t.references :categories, foreign_key: true
      t.references :suppliers, foreign_key: true

      t.timestamps
    end
  end
end
