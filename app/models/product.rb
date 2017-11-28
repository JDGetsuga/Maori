class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :product_quantities
end
