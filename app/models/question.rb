class Question < ApplicationRecord
  belongs_to :motivationer, class_name: "Motivation"
  has_many :question_motivations
  has_many :motivations, through: :question_motivations
  has_many :survey_questions
  has_many :survey, through: :survey_questions
  has_many :survey_responses
end
