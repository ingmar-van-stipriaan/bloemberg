ActiveAdmin.register Project do

  permit_params :name, :short_description, :description, :image

  form do |f|
    f.inputs "Info" do
      f.input :name
      f.input :short_description
      f.input :description, as: :html_editor
      f.input :image, as: :file, :hint => f.template.image_tag(f.object.image.thumb.url)
    end
    f.actions
  end

  show do |project|
    attributes_table do
      row :name
      row :short_description do
        simple_format project.short_description
      end
      row :description do
        simple_format project.description
      end
      row :image do
        image_tag(project.image.thumb.url)
      end
      row " " do
        link_to "Alle projecten", admin_projects_path
      end
    end
  end

end
