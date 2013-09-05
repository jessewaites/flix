class Event < ActiveRecord::Base

  validates :name, :location, presence: true

  validates :description, length: {minimum: 2}

  validates :price, numericality: { greater_that_or_equal_to: 0}

  validates :capacity, numericality: {only_integer: true, greater_than: 0}

  validates :image_file_name, allow_blank: true, format: {
    with: /\w+\.(gif|jpg|png)\z/i,
    message: "Sorry, Must be a GIF, JPG, or PNG only."
  }

  has_many :registrations, dependent: :destroy

  def free?
    price.blank? || price == 0
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end

  def spots_left
    capacity - registrations.size
  end

  def sold_out?
    spots_left.zero?
  end


end