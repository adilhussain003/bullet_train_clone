# == Schema Information
#
# Table name: survey_responses
#
#  id                             :bigint           not null, primary key
#  response                       :string
#  survey_id                      :bigint           not null
#  question_id                    :bigint           not null
#  user_id                        :bigint           not null
#  response_score_1_to_10         :integer
#  response_score_negative_5_to_5 :integer
#  caculated_change_in_motivation :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
class SurveyResponse < ApplicationRecord
  belongs_to :survey
  belongs_to :question
  belongs_to :user
end
