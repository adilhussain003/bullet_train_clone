class Motivation < ApplicationRecord
    has_many :created_questions, class_name: "Question", foreign_key: "motivationer_id"
    has_many :question_motivations
    has_many :questions, through: :question_motivations
end
