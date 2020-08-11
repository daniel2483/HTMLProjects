class IslesController < ApplicationController
  # GET /isles
  # GET /isles.json
  def index
    @isles = Isle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @isles }
    end
  end

  # GET /isles/1
  # GET /isles/1.json
  def show
    @isle = Isle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @isle }
    end
  end

  # GET /isles/new
  # GET /isles/new.json
  def new
    @isle = Isle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @isle }
    end
  end

  # GET /isles/1/edit
  def edit
    @isle = Isle.find(params[:id])
  end

  # POST /isles
  # POST /isles.json
  def create
    @isle = Isle.new(params[:isle])

    respond_to do |format|
      if @isle.save
        format.html { redirect_to @isle, :notice => 'Isle was successfully created.' }
        format.json { render :json => @isle, :status => :created, :location => @isle }
      else
        format.html { render :action => "new" }
        format.json { render :json => @isle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /isles/1
  # PUT /isles/1.json
  def update
    @isle = Isle.find(params[:id])

    respond_to do |format|
      if @isle.update_attributes(params[:isle])
        format.html { redirect_to @isle, :notice => 'Isle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @isle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /isles/1
  # DELETE /isles/1.json
  def destroy
    @isle = Isle.find(params[:id])
    @isle.destroy

    respond_to do |format|
      format.html { redirect_to isles_url }
      format.json { head :no_content }
    end
  end
end
