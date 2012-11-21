class RemovePhotoColumn < ActiveRecord::Migration
  def change
    remove_column :photos, :photo
  end
end
