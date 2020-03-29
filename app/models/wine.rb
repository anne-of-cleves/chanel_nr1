# == Schema Information
#
# Table name: wines
#
#  id          :integer          not null, primary key
#  acidity     :decimal(, )
#  alc         :decimal(, )
#  label       :string
#  name        :string
#  origin      :string
#  price       :integer
#  sugar       :integer
#  wherebought :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Wine < ApplicationRecord
	validates :name, presence: true, uniqueness: { message: "Name should be unique" }
	validates :year, numericality: { allow_nil: true, 
		greater_than_or_equal_to: 1995, 
		less_than_or_equal_to: Date.today.year}
	validates :alc, numericality: { allow_nil: true, 
		greater_than_or_equal_to: 9, 
		less_than_or_equal_to: 20}

	mount_uploader :label, LabelUploader
end
