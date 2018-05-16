class AddAttributesToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :nome, :string
    add_column :contacts, :idade, :integer
    add_column :contacts, :instituicao, :string
    add_column :contacts, :email, :string
    add_column :contacts, :celular, :string
  end
end
