class Event < ActiveRecord::Base
  def free?
    price.blank? || price == 0
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end
end