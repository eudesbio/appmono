class AddNomeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :nome, :string
    add_column :users, :telefone, :string
    add_column :users, :obs, :text
  end
end
