class CocktailsController < ApplicationController
  before_action :select_cocktail, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save(cocktail_params)
    redirect_to cocktails_path
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
  end

  private

  def select_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
      params.require(:cocktail).permit(:name)
  end
end
