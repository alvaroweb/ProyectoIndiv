class CreateFooBars < ActiveRecord::Migration
  def change
    create_table :foo_bars do |t|
      t.string :name
      t.string :surname
      t.string :phone

      t.timestamps
    end
  end
end
