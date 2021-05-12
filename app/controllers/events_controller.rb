class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @events = Event.all.order('created_at DESC')
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :date, :open_time, :start_time, :place, :price_adv, :price_door, :capacity, :genre_id, :event_text, :precautions, images: []).merge(user_id: current_user.id)
  end
end
