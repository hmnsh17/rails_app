class SuppliersController < ApplicationController

  def index
    @suppliers=Supplier.all
  end

  def new
    @supplier=Supplier.new
  end

  def show
    @supplier=Supplier.find(params[:id])
  end

  def create
    @supplier=Supplier.new(supplier_params)
    respond_to do |format|
      if @supplier.save
        format.html{redirect_to @supplier,notice:"Supplier created successfully"}
      else
        format.html{render :new,status: :unprocessable_entity}
      end
    end
  end

  def edit
    @supplier=Supplier.find(params[:id])
  end

  def update
    @supplier=Supplier.find(params[:id])
    respond_to do |format|
      if @supplier.update(supplier_params)
      format.html{redirect_to suppliers_url,notice:"Supplier update successfully"}
      else
        format.html{render :edit,status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @supplier=Supplier.find(params[:id])
    respond_to do |format|
      @supplier.destroy
        format.html{redirect_to suppliers_url,notice:"Supplier deleted successfully"}
    end
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name)
  end




end
