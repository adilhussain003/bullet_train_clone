# == Schema Information
#
# Table name: teams
#
#  id              :integer          not null, primary key
#  name            :string
#  slug            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  being_destroyed :boolean
#  time_zone       :string
#  locale          :string
#
FactoryBot.define do
  factory :team do
    sequence(:name) { |n| "Generic Team #{n}" }
    sequence(:slug) { |n| "team_#{n}" }
    time_zone { nil }
    locale { nil }
  end
end
