class Service < ActiveRecord::Base
	has_many :prices
	has_many :memberships
	has_many :headerclasses
end
