class Art < ActiveRecord::Base
  validates :title, length: {maximum: 30}
end
