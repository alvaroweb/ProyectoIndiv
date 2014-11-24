class AddAttributesToPadre < ActiveRecord::Migration
  def change
  	add_column :padres, :name, :string 
    add_column :padres, :surname, :string 
    add_column :padres, :phone, :string 
  end
end
