class Item < ActiveRecord::Base
  belongs_to :list

  def days_since_creation
    (Date.today - created_at.to_date).to_i
  end
end