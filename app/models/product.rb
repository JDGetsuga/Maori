class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :product_quantities

  def tipo_enum
		['Bebidas','Comestibles','Proteinas','Accesorios']
	end

end
