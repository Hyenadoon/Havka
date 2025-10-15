ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
permit_params :name, :category, :default_unit, :price_per_kg, :calories, :protein, :fat, :carbs
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :category, :default_unit, :price_per_kg, :calories, :protein, :fat, :carbs]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
