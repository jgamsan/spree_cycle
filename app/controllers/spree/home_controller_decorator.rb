Spree::HomeController.class_eval do
  helper 'spree/products'
  respond_to :html

  def index
    @searcher = Spree::Config.searcher_class.new(:in_offert => true)
    @products = @searcher.retrieve_products
    @cycle_images = Spree::CycleImage.all
    respond_with(@products)
  end

end
