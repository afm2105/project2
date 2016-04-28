class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.text :tidbit
      
      t.timestamps null: false
    end
  end
end
