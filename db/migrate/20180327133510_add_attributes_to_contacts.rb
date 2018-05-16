class AddAttributesToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :confirm, :boolean
  end
end
