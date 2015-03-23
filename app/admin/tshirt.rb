ActiveAdmin.register Tshirt do
  permit_params :name, :email, :phone, :shirts, :total

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :shirts
    column :total
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :phone
  filter :shirts
  filter :total
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :phone
      f.input :shirts
      f.input :total
    end
    f.actions
  end

end
