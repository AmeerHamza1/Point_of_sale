class Product < ApplicationRecord
  belongs_to :category
  belongs_to :saledetail
  belongs_to :purchasedetail
end
