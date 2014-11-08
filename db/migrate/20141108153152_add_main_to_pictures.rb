class AddMainToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :main_gallery, :boolean
  end
end
