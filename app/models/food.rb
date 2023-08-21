# == Schema Information
#
# Table name: foods
#
#  id          :bigint           not null, primary key
#  description :text
#  location    :string           not null
#  name        :string           not null
#  number      :integer          not null
#  purchase    :date             not null
#  unit        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_foods_on_user_id  (user_id)
#
class Food < ApplicationRecord
  belongs_to :user

  validates :name, :number, :unit, :purchase, :location, presence: true

end
