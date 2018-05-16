class AddAttributesToPreinscricoes < ActiveRecord::Migration[5.1]
  def change
    add_column :preinscricoes, :nome, :string
    add_column :preinscricoes, :idade, :integer
    add_column :preinscricoes, :instituicao, :string
    add_column :preinscricoes, :email, :string
    add_column :preinscricoes, :telefone, :string
    add_column :preinscricoes, :choice, :string
  end
end
