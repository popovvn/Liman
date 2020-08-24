class License < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new

  validates :lictype, presence: true
  validates :licaccount, presence: true, numericality: { only_integer: true }
  validates :licdate, presence: true
  validates :licaccount, uniqueness: { scope: :lictype, message: "Такой торговый счет уже есть для данного типа лицензии !" }

  def set_defaults
    self.lictype  ||= 'fibo1'
  end

end
