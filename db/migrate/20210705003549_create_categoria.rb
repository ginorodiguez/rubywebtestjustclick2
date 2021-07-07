class CreateCategoria < ActiveRecord::Migration[6.1]
  def change
    create_table :categoria do |t|
      #t.integer :id_categoria
      t.string :nombre_categoria
      t.stirng :nombre_producto

      t.timestamps
    end
  end
end
