class AnswerChoice

  belongs_to :questions,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question

  belongs_to :answerer,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User
end
