class Survey < ApplicationRecord
  belongs_to :creator, class_name: "User"
  belongs_to :motivation
  has_many :user_surveys
  has_many :users, through: :user_surveys
  has_many :survey_questions
  has_many :question, through: :survey_questions
  has_many :survey_responses
end
