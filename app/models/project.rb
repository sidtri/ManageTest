class Project < ActiveRecord::Base

has_many :tests
has_many :fils
has_many :requests
has_many :acknowledges
end
