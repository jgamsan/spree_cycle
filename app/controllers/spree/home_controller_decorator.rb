Spree::HomeController.class_eval do
  helper 'spree/products'
  respond_to :html

  def index
    @searcher = Spree::Config.searcher_class.new(:in_offert => true)
    @products = @searcher.retrieve_products
    respond_with(@products)
    @cycle_images = Spree::CycleImage.all
  end
end
