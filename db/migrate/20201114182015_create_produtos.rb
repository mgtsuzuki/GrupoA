class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :quantidade
      t.date :data_validade
      t.string :tipos_de_quantidade
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
