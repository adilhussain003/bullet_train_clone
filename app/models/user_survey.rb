# == Schema Information
#
# Table name: user_surveys
#
#  id         :bigint           not null, primary key
#  survey_id  :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserSurvey < ApplicationRecord
  belongs_to :survey
  belongs_to :user
end
