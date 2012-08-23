class Spree::CycleImagesController < Spree::BaseController

  helper 'spree/products'
  respond_to :html

  def index
    #@searcher = Spree::Config.searcher_class.new(:in_offert => true)
    #@products = @searcher.retrieve_products
    @products = Spree::Product.in_offert(true).page(params[:page]).per(12)
    #respond_with(@products)
    @cycle_images = Spree::CycleImage.all
  end

end
