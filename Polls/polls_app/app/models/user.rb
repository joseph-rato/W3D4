class User

  has_many :polls,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Poll

  has_many :answers,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :AnswerChoice
end
