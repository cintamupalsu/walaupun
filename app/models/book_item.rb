# -----------------------------------
# 02.01 2019.01.02 By Arief Maulana
# -----------------------------------
# 02.01 2019.01.02 Ancestry
# -----------------------------------
class BookItem < ApplicationRecord
  belongs_to :book
  belongs_to :book_structure
  # 02.01 2019.01.02 >>>
  validates :book, presence: true
  validates :book_structure, presence: true
  has_ancestry
  # 02.01 2019.01.02 <<<
end
