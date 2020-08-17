class License < ApplicationRecord
  validates :lictype, presence: true
  validates :licaccount, presence: true, numericality: { only_integer: true }
  validates :licdate, presence: true
  validates :licaccount, uniqueness: { scope: :lictype, message: "Такой торговый счет уже есть для данного типа лицензии !" }
end
