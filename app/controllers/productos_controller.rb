class ProductosController < ApplicationController

    def index
      @productos = Producto.all
    end

    def new
      @productos = Producto.new
    end

    def create
      @productos = Producto.new(producto_params)
        if @tiendas.save
          redirect_to productos_path
        else
          render :new
        end
    end

    def edit
      @productos = Producto.find(params[:id])
    end

    def update
      @productos = Producto.find(params[:id])
        if @productos.update(producto_params)
          redirect_to productos_path
        else
          render :edit
        end
    end

    def delete
      @productos = Producto.find(params[:id])
      @productos.destroy
      redirect_to productos_path
    end

    private
      def producto_params
        params.require(:producto).permit(:id_producto, :nombre_producto, :descripcion_producto, :precio,
        :nombre_categoria, :nombre_tienda)
      end
   end
