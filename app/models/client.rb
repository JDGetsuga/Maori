class Client < ActiveRecord::Base
	has_many :memberships
	has_many :sales
	has_many :detailclasses
end
