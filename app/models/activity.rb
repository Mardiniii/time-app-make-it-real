class Activity < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	validates :project, presence: true
  	validates :description, presence: true
end
