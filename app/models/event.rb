class Event < ActiveRecord::Base
  def free?
    price.blank? || price == 0
  end
end