class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  # validate :mens_or_womens

  # def mens_or_womens
  #   if !mens_apparel && !womens_apparel
  #     errors.add("Store must sell either men's or women's apparel")
  #   end
  # end

end
