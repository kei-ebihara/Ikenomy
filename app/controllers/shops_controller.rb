class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :update, :destroy]

  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result.with_attached_image.find_newest_shops(params[:page])
  end

  def new
    @shop = Shop.new
  end  

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to @shop, notice: "お店を登録しました。"
    else
    render :new
    end
  end  

  def show
    @shop = Shop.with_attached_image.includes(reviews: :user).find(params[:id])
  end

  def edit
  end 

  def update
    if @shop.update(shop_params)
      redirect_to @shop, notice: "お店を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path, notice: "お店を削除しました。"
  end

  def index
    @shops = Shop.page(params[:page]).per(4)
  end

  private  
  def shop_params
    params.require(:shop).permit(:name, :adress, :opentime, :closetime, :regularholiday, :description, :hp, :new_image, :junre_id)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

end
