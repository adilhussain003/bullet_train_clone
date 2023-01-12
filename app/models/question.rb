# == Schema Information
#
# Table name: questions
#
#  id              :bigint           not null, primary key
#  question        :string
#  motivationer_id :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Question < ApplicationRecord
  belongs_to :motivationer, class_name: "Motivation"
  has_many :question_motivations
  has_many :motivations, through: :question_motivations
  has_many :survey_questions
  has_many :surveys, through: :survey_questions
  has_many :survey_responses
end
