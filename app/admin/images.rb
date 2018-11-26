ActiveAdmin.register Image do
permit_params :name,:image_url,:product_image_url,:pdf
actions :all
menu label: "image",priority: 2

a="localhost:3000"
index do
    selectable_column
    column :id 
    column :name
    column :image_url do |i|
        link_to "#{i.image_url.to_s}",:download=>"#{(i.image_url.to_s).split("/").last}" do
        image_tag(i.image_url.to_s,size: "200x200")
        end
    end

    column :product_image_url do |i|
       link_to "#{i.product_image_url.to_s}",:download=>"#{(i.product_image_url.to_s).split("/").last}" do
        image_tag(i.product_image_url.to_s,size: "200x200")
       end
    end
    
    column "下载PDF" do |i|
        link_to "#{(i.pdf.to_s).split("/").last} DOWNLOAD",i.pdf.to_s,:download=>"#{(i.pdf.to_s).split("/").last}"
    end
end





# index :as => :grid  do |i|

#     # columns i.name 
   
#     image_tag(i.image_url.to_s,size: "200x200")
    
#     image_tag(i.product_image_url.to_s,size: "200x200")

#      #link_to("查看PDF", i.pdf.to_s) 
# end

filter :id
filter :name


end