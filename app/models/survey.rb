# == Schema Information
#
# Table name: surveys
#
#  id            :bigint           not null, primary key
#  creator_id    :bigint           not null
#  motivation_id :bigint           not null
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Survey < ApplicationRecord
  belongs_to :creator, class_name: "User"
  belongs_to :motivation
  has_many :user_surveys
  has_many :users, through: :user_surveys
  has_many :survey_questions
  has_many :questions, through: :survey_questions
  has_many :survey_responses
end
