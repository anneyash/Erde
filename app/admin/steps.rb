ActiveAdmin.register Step do
  permit_params :form_id, :order_id

  form do |f|
  f.inputs "Forms" do
    f.input :order_id
    f.input :form_id, :as => :select, :collection => Form.all.map {|u| [u.title, u.id]}
  end
  f.actions
end

end
