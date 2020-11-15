class ItemRecipesController < ApplicationController
  before_action :get_recipe
  before_action :set_item_recipe, only: [:show, :edit, :update, :destroy]

  # GET /item_recipes
  # GET /item_recipes.json
  def index
    @item_recipes = @recipe.item_recipe
    # era @item_recipes = ItemRecipe.all
  end

  # GET /item_recipes/1
  # GET /item_recipes/1.json
  def show
  end

  # GET /item_recipes/new
  def new
    @item_recipe = @recipe.item_recipe.build
    # era @item_recipe = ItemRecipe.new
  end

  # GET /item_recipes/1/edit
  def edit
  end

  # POST /item_recipes
  # POST /item_recipes.json
  def create
    @item_recipe = @recipe.item_recipe.build(item_recipe_params)
    # era @item_recipe = ItemRecipe.new(item_recipe_params)

    respond_to do |format|
      if @item_recipe.save
        format.html { redirect_to recipe_item_recipe_url(@recipe, @item_recipe), notice: 'Item recipe was successfully created.' }
        # era format.html { redirect_to @item_recipe, notice: 'Item recipe was successfully created.' }
        format.json { render :show, status: :created, location: @item_recipe }
      else
        format.html { render :new }
        format.json { render json: @item_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_recipes/1
  # PATCH/PUT /item_recipes/1.json
  def update
    respond_to do |format|
      if @item_recipe.update(item_recipe_params)
        format.html { redirect_to recipe_item_recipe_url(@recipe), notice: 'Item recipe was successfully updated.' }
        # era format.html { redirect_to @item_recipe, notice: 'Item recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_recipe }
      else
        format.html { render :edit }
        format.json { render json: @item_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_recipes/1
  # DELETE /item_recipes/1.json
  def destroy
    @item_recipe.destroy
    respond_to do |format|
      format.html { redirect_to (recipe_item_recipe_url(@recipe)), notice: 'Item recipe was successfully destroyed.' }
      # era format.html { redirect_to item_recipes_url, notice: 'Item recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
    
    def set_item_recipe
      @item_recipe = @recipe.item_recipe.find(params[:id])
      # era @item_recipe = ItemRecipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_recipe_params
      params.require(:item_recipe).permit(:quantidade, :produto_id)
      # era params.require(:item_recipe).permit(:quantidade, :produto_id, :recipe_id)
    end
end
