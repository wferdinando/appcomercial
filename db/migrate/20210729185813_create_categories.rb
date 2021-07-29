class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
