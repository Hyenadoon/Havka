ActiveAdmin.register Recipe do

  permit_params :name, :description, :total_time, :servings, :cuisine, :spicy, :image_url, :instructions

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :cuisine
    column :servings
    column :spicy
    column :total_time
    column :image_url
    column :instructions
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :total_time
      f.input :servings
      f.input :cuisine
      f.input :spicy
      f.input :image_url
      f.input :instructions, as: :text, input_html: { rows: 8 }
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :total_time
      row :servings
      row :cuisine
      row :spicy
      row :image_url
      row(:instructions) { |r| simple_format(r.instructions) }
    end
  end
  
end
