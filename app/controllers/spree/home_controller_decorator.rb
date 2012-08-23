Spree::HomeController.class_eval do
  def index

      @cycle_images = Spree::CycleImage.all
    end
end
