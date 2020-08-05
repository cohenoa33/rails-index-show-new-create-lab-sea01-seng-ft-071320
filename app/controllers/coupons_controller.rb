class CouponsController < ApplicationController

    def index 
        @coupon = Coupon.all
    end

    def new
    end
    
    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def create  
        # @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        # @coupon = Coupon.new
        # @coupon.coupon_code = params[:coupon_code]
        # @coupon.store = params[:store]
        # @coupon.save
        redirect_to coupon_path(@coupon)
    end
    

    
end
