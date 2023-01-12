class User < ApplicationRecord
  include Users::Base
  # 🚅 add concerns above.

  # 🚅 add belongs_to associations above.

  # 🚅 add has_many associations above.
  has_many :created_surveys, class_name: "Survey", foreign_key: "creator_id"
  has_many :user_surveys
  has_many :surveys, through: :user_surveys
  has_many :survey_responses
  # 🚅 add oauth providers above.

  # 🚅 add has_one associations above.

  # 🚅 add scopes above.

  # 🚅 add validations above.

  # 🚅 add callbacks above.

  # 🚅 add delegations above.

  # 🚅 add methods above.
end
