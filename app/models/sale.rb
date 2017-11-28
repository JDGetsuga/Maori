class Sale < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  has_many :membership
  has_many :product_quantities
  has_many :checks

end
