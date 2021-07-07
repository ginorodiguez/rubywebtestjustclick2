class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      #t.integer :id_producto
      t.string :nombre_producto
      t.string :descripcion_producto
      t.float :precio
      t.string :nombre_tienda
      t.string :nombre_categoria

      t.timestamps
    end
  end
end
