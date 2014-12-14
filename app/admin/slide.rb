ActiveAdmin.register Slide do

  permit_params :title, :description, :image

  form do |f|
    f.inputs "Info" do
      f.input :title
      f.input :description
      f.input :image, as: :file, :hint => f.template.image_tag(f.object.image.thumb.url)
    end
    f.actions
  end

end
