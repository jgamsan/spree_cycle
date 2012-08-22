class Spree::CycleImagesController < Spree::BaseController
  def index
    @cycle_images = Spree::CycleImage.all
  end
end
