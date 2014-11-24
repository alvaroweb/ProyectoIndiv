class AddColumn < ActiveRecord::Migration
  def change
  	add_column :padres, :email, :string	
  	add_column :teachers, :email, :string
  	add_column :teachers, :materias, :string
  end
end
