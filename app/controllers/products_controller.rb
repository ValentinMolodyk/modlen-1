class ProductsController < InheritedResources::Base
  before_action :current_user
  before_action :destroy_temp_items
  load_and_authorize_resource

  def index
    @variants = Variant.joins(:product).where('show_on_main' => true, 'products.public' => true)
  end

end
