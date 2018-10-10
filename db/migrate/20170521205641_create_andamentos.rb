class CreateAndamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :andamentos do |t|
      t.boolean :analisado
      t.boolean :consertado
      t.boolean :testado
      t.boolean :entregue
      t.date :data

      t.timestamps
    end
  end
end
