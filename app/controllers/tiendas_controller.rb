class TiendasController < ApplicationController

  def index
    @tiendas = Tienda.all
  end

  def new
    @tiendas = Tienda.new
  end

  def create
    @tiendas = Tienda.new(tienda_params)
      if @tiendas.save
        redirect_to tiendas_path
      else
        render :new
      end
  end

  def edit
    @tiendas = Tienda.find(params[:id])
  end

  def update
    @tiendas = Tienda.find(params[:id])
      if @tiendas.update(tienda_params)
        redirect_to tiendas_path
      else
        render :edit
      end
  end

  def delete
    @tiendas = Tienda.find(params[:id])
    @tiendas.destroy
    redirect_to tiendas_path
  end

  private
    def tienda_params
      params.require(:tienda).permit(:id_tienda, :nombre_tienda, :descripcion_tienda, :ciudad,
      :pais, :nombre_producto)
    end
 end
