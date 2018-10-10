class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.references :user, foreign_key: true
      t.date :data
      t.string :objeto
      t.string :cpu
      t.string :hd
      t.string :memoria
      t.text :obs
      t.decimal :valor

      t.timestamps
    end
  end
end
