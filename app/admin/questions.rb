ActiveAdmin.register Question do
  permit_params :title, :question_type, :step, :form_id, :ordering, :muted_text, :placeholder

  form do |f|
    f.input :title
    f.input :question_type, :as => :select, :collection => Question::QUESTION_TYPE_CHOICE
    f.input :step
    f.input :form_id, :as => :select, :collection => Form.all.map {|u| [u.title, u.id]}
    f.input :ordering
    f.input :muted_text
    f.input :placeholder
    f.actions

  end
end
