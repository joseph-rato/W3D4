class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true

  has_many :authored_polls,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Poll

  has_many :respones,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Response


end
