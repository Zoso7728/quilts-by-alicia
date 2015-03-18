ActiveAdmin.register Custom do
  permit_params :name, :email, :phone, :size, :quilting, :pantograph_patterns, :total

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :size
    column :quilting
    column :pantograph_patterns
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
