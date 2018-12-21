ActiveAdmin.register Question do
  permit_params :title, :question_type, :step_id, :muted_text, :placeholder

  form do |f|
    f.input :title
    f.input :step_id, :as => :select, :collection => Step.all.map {|u| [u.title, u.id]}
    f.input :question_type, :as => :select, :collection => Question::QUESTION_TYPE_CHOICE
    f.input :muted_text
    f.input :placeholder
    f.actions

  end
end
