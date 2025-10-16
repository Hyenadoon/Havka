ActiveAdmin.register UserSession do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
permit_params :user_id, :state, :expires_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :product_id, :product_caliber_id, :quantity, :unit]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end