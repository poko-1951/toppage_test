class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def new
    @event = Event.new
    render plain: render_to_string(partial: 'form_new', layout: false, locals: { event: @event })

  end

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      respond_to do |format|
        format.html { redirect_to events_path } 
        format.js  #create.js.erbを探してその中の処理を実行する
      end
    else
      respond_to do |format|
        format.js {render partial: "error" }
        #登録にエラーが起きたときはerror.js.erbを実行する
      end
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    # @event.update(start: params[:dropped_date], end: params[:end_date])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
      params.require(:event).permit(:title, :start, :end)
  end
end
