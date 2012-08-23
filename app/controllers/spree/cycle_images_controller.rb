module Spree
  class CycleImagesController < BaseController

    helper 'spree/products'
    respond_to :html

    def index
      @searcher = Spree::Config.searcher_class.new(:in_offert => true)
      @products = @searcher.retrieve_products
      respond_with(@products)
    end

  end
end
