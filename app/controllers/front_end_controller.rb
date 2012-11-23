class FrontEndController < ApplicationController
  protect_from_forgery
    
  def index
    if params[:category].present? 
      if (params[:category] == 'PS3')
        @products = Product.includes(:category).where('category = 1').order('sale DESC, new DESC')
      elsif (params[:category] == 'XBOX') 
        @products = Product.includes(:category).where('category = 2').order('sale DESC, new DESC')
      else 
        @products = Product.includes(:category).where('category = 3').order('sale DESC, new DESC')  
      end
    else
      @products = Product.includes(:category).order('sale DESC, new DESC')
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
  
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  
  def search
    
  end
  
  def search_results
      @keywords = params[:keywords]
      @products = Product.where('title LIKE ?', "%#{@keywords}%")
  end
  
  
end
