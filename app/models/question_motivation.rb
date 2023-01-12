# == Schema Information
#
# Table name: question_motivations
#
#  id            :bigint           not null, primary key
#  motivation_id :bigint           not null
#  question_id   :bigint           not null
#  score         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class QuestionMotivation < ApplicationRecord
  belongs_to :motivation
  belongs_to :question
end
