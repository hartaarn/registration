class EventRegistrationsController < ApplicationController
  # GET /event_registrations
  # GET /event_registrations.json
  def index
    @event_registrations = EventRegistration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_registrations }
    end
  end

  # GET /event_registrations/1
  # GET /event_registrations/1.json
  def show
    @event_registration = EventRegistration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_registration }
    end
  end

  # GET /event_registrations/new
  # GET /event_registrations/new.json
  def new
    @event_registration = EventRegistration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_registration }
    end
  end

  # GET /event_registrations/1/edit
  def edit
    @event_registration = EventRegistration.find(params[:id])
  end

  # POST /event_registrations
  # POST /event_registrations.json
  def create
    @event_registration = EventRegistration.new(params[:event_registration])

    respond_to do |format|
      if @event_registration.save
        format.html { redirect_to @event_registration, notice: 'Event registration was successfully created.' }
        format.json { render json: @event_registration, status: :created, location: @event_registration }
      else
        format.html { render action: "new" }
        format.json { render json: @event_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_registrations/1
  # PUT /event_registrations/1.json
  def update
    @event_registration = EventRegistration.find(params[:id])

    respond_to do |format|
      if @event_registration.update_attributes(params[:event_registration])
        format.html { redirect_to @event_registration, notice: 'Event registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_registrations/1
  # DELETE /event_registrations/1.json
  def destroy
    @event_registration = EventRegistration.find(params[:id])
    @event_registration.destroy

    respond_to do |format|
      format.html { redirect_to event_registrations_url }
      format.json { head :no_content }
    end
  end
end
