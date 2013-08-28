class Event < ActiveRecord::Base

  validates :name, :location, presence: true

  validates :description, length: {minimum: 25}

  validates :price, numericality: { greater_that_or_equal_to: 0}

  validates :capacity, numericality: {only_integer: true, greater_than: 0}

  validates :image_file_name, allow_blank: true, format: {
    with: /\w+\.(gif|jpg|png)\z/i,
    message: "Sorry, Must be a GIF, JPG, or PNG only."
  }

  def free?
    price.blank? || price == 0
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end
end