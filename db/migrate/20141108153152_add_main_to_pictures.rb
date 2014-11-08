class AddMainToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :main_gallery, :boolean, default: false
  end
end
