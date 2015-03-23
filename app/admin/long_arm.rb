ActiveAdmin.register User do
  permit_params :name, :email, :phone, :size, :batting, :binding :quilting, :pantograph_patterns, :total

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :size
    column :batting
    column :binding
    column :quilting
    column :pantograph_patterns
    column :total
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :phone
  filter :size
  filter :batting
  filter :binding
  filter :quilting
  filter :pantograph_patterns
  filter :total
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :phone
      f.input :size
      f.input :batting
      f.input :binding
      f.input :quilting
      f.input :pantograph_patterns
      f.input :total
    end
    f.actions
  end

end
