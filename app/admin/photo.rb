ActiveAdmin.register Photo do

  permit_params :title, :image

  form do |f|
    f.inputs "Info" do
      f.input :title
      f.input :image, as: :file, :hint => f.template.image_tag(f.object.image.preview.url)
    end
    f.actions
  end

end
