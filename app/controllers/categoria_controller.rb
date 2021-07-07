class CategoriaController < ApplicationController
  def index
    @categorias = Categoria.all
  end

  def new
    @categorias = Categoria.new
  end

  def create
    @categorias = Categoria.new(categoria_params)
      if @categorias.save
        redirect_to categorias_path
      else
        render :new
      end
  end

  def edit
    @categorias = Categoria.find(params[:id])
  end

  def update
    @categorias = Categoria.find(params[:id])
      if @categorias.update(categoria_params)
        redirect_to categorias_path
      else
        render :edit
      end
  end

  def delete
    @categorias = Categoria.find(params[:id])
    @categorias.destroy
    redirect_to categorias_path
  end

  private
    def categoria_params
      params.require(:categoria).permit(:id_categoria, :nombre_categoria, :nombre_producto)
    end
 end
