class Response < ApplicationRecord

  belongs_to :respondent,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :AnswerChoice

  has_one :question,
  through: :answer_choice,
  source: :questions


  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.exists?
  end

  def not_duplicate_response
    if respondent_already_answered?
      response.errors[:answer_choice_id]
  end

end
