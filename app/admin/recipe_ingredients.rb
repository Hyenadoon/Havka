ActiveAdmin.register RecipeIngredient do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
permit_params :recipe_id, :product_id, :quantity, :unit
  #
  # or
  #
  # permit_params do
  #   permitted = [:recipe_id, :product_id, :quantity, :unit]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
