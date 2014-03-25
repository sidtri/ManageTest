class Acknowledge < ActiveRecord::Base
	belongs_to :project
	belongs_to :request
end
