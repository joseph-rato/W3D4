class AnswerChoice < ApplicationRecord
  validates :answer, presence: true

  belongs_to :questions,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question

  has_many :responses,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :Response

end
