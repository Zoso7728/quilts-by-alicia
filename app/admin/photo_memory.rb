ActiveAdmin.register User do
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

  filter :name
  filter :email
  filter :phone
  filter :size
  filter :total
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :phone
      f.input :size
      f.input :total
    end
    f.actions
  end

end
