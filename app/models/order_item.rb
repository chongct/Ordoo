class OrderItem < ApplicationRecord
  belongs_to :delivery_order, dependent: :destroy, optional: true
  belongs_to :meal, dependent: :destroy, optional: true

  has_one :feedback, as: :ratable
end
