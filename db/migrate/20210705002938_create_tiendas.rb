class CreateTiendas < ActiveRecord::Migration[6.1]
  def change
    create_table :tiendas do |t|
      #t.integer :id_tienda
      t.string :nombre_tienda
      t.string :descripcion_tienda
      t.string :ciudad
      t.string :pais
      t.string :nombre_producto
      t.timestamps
    end
  end
end
