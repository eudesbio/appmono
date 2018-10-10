class AddProdutoToAndamentos < ActiveRecord::Migration[5.0]
  def change
    add_reference :andamentos, :produto, foreign_key: true
  end
end
