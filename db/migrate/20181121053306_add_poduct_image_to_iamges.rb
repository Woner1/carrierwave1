class AddPoductImageToIamges < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :product_image_url, :string
    add_column :images, :pdf, :string
  end
end
