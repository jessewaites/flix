class Registration < ActiveRecord::Base

  validates :name, presence: true
  validates :email, format: { with: /(\S+)@(\S+)/ }

  HOW_HEARD_OPTIONS = [
    'Facebook',
    'Twitter',
    'Search Engine',
    'Friend/CoWorker',
    'Other'
  ]

  validates :how_heard,
            inclusion: { in: HOW_HEARD_OPTIONS }

  belongs_to :event
end
