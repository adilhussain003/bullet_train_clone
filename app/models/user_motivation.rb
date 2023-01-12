# == Schema Information
#
# Table name: user_motivations
#
#  id            :bigint           not null, primary key
#  user_id       :bigint           not null
#  motivation_id :bigint           not null
#  score         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class UserMotivation < ApplicationRecord
  belongs_to :user
  belongs_to :motivation
end
