class AddAttibutesToPreinscricoes < ActiveRecord::Migration[5.1]
  def change
    add_column :preinscricoes, :confirm, :boolean
  end
end
