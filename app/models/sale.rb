class Sale < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  has_many :membership, dependent: :destroy
  has_many :product_quantities , dependent: :destroy
  has_many :checks, dependent: :destroy



end
