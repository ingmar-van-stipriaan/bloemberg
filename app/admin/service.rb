ActiveAdmin.register Service do

  permit_params :title, :short_description, :description, :image

  form do |f|
    f.inputs "Info" do
      f.input :title
      f.input :short_description
      f.input :description, as: :html_editor
      f.input :image, as: :file, :hint => f.template.image_tag(f.object.image.thumb.url)
    end
    f.actions
  end

end
