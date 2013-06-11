class OnCallsController < ApplicationController
  # GET /on_calls
  # GET /on_calls.json
  def index
    @on_calls = OnCall.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @on_calls }
    end
  end

  # GET /on_calls/1
  # GET /on_calls/1.json
  def show
    @on_call = OnCall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @on_call }
    end
  end

  # GET /on_calls/new
  # GET /on_calls/new.json
  def new
    @on_call = OnCall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @on_call }
    end
  end

  # GET /on_calls/1/edit
  def edit
    @on_call = OnCall.find(params[:id])
  end

  # POST /on_calls
  # POST /on_calls.json
  def create
    @on_call = OnCall.new(params[:on_call])

    respond_to do |format|
      if @on_call.save
        format.html { redirect_to @on_call, notice: 'On call was successfully created.' }
        format.json { render json: @on_call, status: :created, location: @on_call }
      else
        format.html { render action: "new" }
        format.json { render json: @on_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /on_calls/1
  # PUT /on_calls/1.json
  def update
    @on_call = OnCall.find(params[:id])

    respond_to do |format|
      if @on_call.update_attributes(params[:on_call])
        format.html { redirect_to @on_call, notice: 'On call was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @on_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_calls/1
  # DELETE /on_calls/1.json
  def destroy
    @on_call = OnCall.find(params[:id])
    @on_call.destroy

    respond_to do |format|
      format.html { redirect_to on_calls_url }
      format.json { head :no_content }
    end
  end
end
