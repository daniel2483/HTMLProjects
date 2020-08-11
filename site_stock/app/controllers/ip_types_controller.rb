class IpTypesController < ApplicationController
  # GET /ip_types
  # GET /ip_types.json
  def index
    @ip_types = IpType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ip_types }
    end
  end

  # GET /ip_types/1
  # GET /ip_types/1.json
  def show
    @ip_type = IpType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ip_type }
    end
  end

  # GET /ip_types/new
  # GET /ip_types/new.json
  def new
    @ip_type = IpType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ip_type }
    end
  end

  # GET /ip_types/1/edit
  def edit
    @ip_type = IpType.find(params[:id])
  end

  # POST /ip_types
  # POST /ip_types.json
  def create
    @ip_type = IpType.new(params[:ip_type])

    respond_to do |format|
      if @ip_type.save
        format.html { redirect_to @ip_type, :notice => 'Ip type was successfully created.' }
        format.json { render :json => @ip_type, :status => :created, :location => @ip_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ip_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ip_types/1
  # PUT /ip_types/1.json
  def update
    @ip_type = IpType.find(params[:id])

    respond_to do |format|
      if @ip_type.update_attributes(params[:ip_type])
        format.html { redirect_to @ip_type, :notice => 'Ip type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ip_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_types/1
  # DELETE /ip_types/1.json
  def destroy
    @ip_type = IpType.find(params[:id])
    @ip_type.destroy

    respond_to do |format|
      format.html { redirect_to ip_types_url }
      format.json { head :no_content }
    end
  end
end
