ActiveAdmin.register PhotoMemory do
  permit_params :name, :email, :phone, :size, :total

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :size
    column :total
    column :created_at
    actions
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
