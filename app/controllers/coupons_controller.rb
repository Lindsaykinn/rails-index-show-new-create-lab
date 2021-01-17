class CouponsController < ApplicationController
  #Instead of passing find_coupon into the show method, you can say:
  before_action :find_coupon, only: [:show, :new, :create]

  def index
    @coupons = Coupon.all
  end

  def show
    #don't have to add find_coupon bc it is called in the before_action above
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new #(coupon_params)
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    if @coupon.save 
      redirect_to coupon_path(@coupon)
    else
      render :new
    end
  end

  
  private

  #strong params:

  # def coupon_params
  #   params.require(:coupon)
  # end

  def find_coupon
    @coupon = Coupon.find_by_id(params[:id])
  end
    
end
