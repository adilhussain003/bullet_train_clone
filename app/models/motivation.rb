# == Schema Information
#
# Table name: motivations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Motivation < ApplicationRecord
    has_many :created_questions, class_name: "Question", foreign_key: "motivationer_id"
    has_many :question_motivations
    has_many :questions, through: :question_motivations
    has_many :surveys
end
