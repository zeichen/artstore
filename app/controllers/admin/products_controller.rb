class Admin::ProductsController < ApplicationController
<<<<<<< HEAD
	layout "admin"
	
	before_action :authenticate_user!
	before_action :admin_required


	def index
		@products =Product.all
	end

	def new
		@product = Product.new
		 @photo = @product.build_photo
	end

	def edit 
		@product = Product.find(params[:id])
		 if @product.photo.present?
		 	 @photo = @product.photo
		 	  else
		 	  	 @photo = @product.build_photo
		 	  	   end
	end

	def update 
	@product = Product.find(params[:id])

	if @product.update(product_params)
		redirect_to admin_products_path
	else
		render edit
	end
	

	end





	def create
=======

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
>>>>>>> 8ba5ecafa4b846be3fde8ade4fdfd22edd059451
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  private

  def product_params
<<<<<<< HEAD
    params.require(:product).permit(:title, :description, :quantity, :price, photo_attributes: [:image, :id])
=======
    params.require(:product).permit(:title, :description, :quantity, :price)
>>>>>>> 8ba5ecafa4b846be3fde8ade4fdfd22edd059451
  end
end
