class CreatePadres < ActiveRecord::Migration
  def change
    create_table :padres do |t|
    	t.string :correo      
      t.timestamps
    end
  end
end
