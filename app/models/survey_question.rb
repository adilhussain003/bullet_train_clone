# == Schema Information
#
# Table name: survey_questions
#
#  id          :bigint           not null, primary key
#  survey_id   :bigint           not null
#  question_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class SurveyQuestion < ApplicationRecord
  belongs_to :survey
  belongs_to :question
end
