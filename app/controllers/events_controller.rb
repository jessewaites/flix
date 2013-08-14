class EventsController < ApplicationController
  def index
    @events = ['BBQ', 'Welcome Home Party', 'Thoughtbot Meetup', 'Rails User Group']
  end
end
