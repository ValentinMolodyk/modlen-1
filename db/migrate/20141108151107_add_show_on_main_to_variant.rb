class AddShowOnMainToVariant < ActiveRecord::Migration
  def change
    add_column :variants, :show_on_main, :boolean
  end
end
