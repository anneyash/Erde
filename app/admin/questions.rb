ActiveAdmin.register Question do
  permit_params :title, :type

  form do |f|
    f.input :title
    f.input :type, :as => :select, :collection => Question::OPTIONS
    f.actions
  end
end
