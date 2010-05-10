class DataMimesController < ApplicationController
  # GET /data_mimes
  # GET /data_mimes.xml
  def index
    @data_mimes = DataMime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_mimes }
    end
  end

  # GET /data_mimes/1
  # GET /data_mimes/1.xml
  def show
    @data_mime = DataMime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_mime }
    end
  end

  # GET /data_mimes/new
  # GET /data_mimes/new.xml
  def new
    @data_mime = DataMime.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_mime }
    end
  end

  # GET /data_mimes/1/edit
  def edit
    @data_mime = DataMime.find(params[:id])
  end

  # POST /data_mimes
  # POST /data_mimes.xml
  def create
    @data_mime = DataMime.new(params[:data_mime])

    respond_to do |format|
      if @data_mime.save
        flash[:notice] = 'DataMime was successfully created.'
        format.html { redirect_to(@data_mime) }
        format.xml  { render :xml => @data_mime, :status => :created, :location => @data_mime }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_mime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_mimes/1
  # PUT /data_mimes/1.xml
  def update
    @data_mime = DataMime.find(params[:id])

    respond_to do |format|
      if @data_mime.update_attributes(params[:data_mime])
        flash[:notice] = 'DataMime was successfully updated.'
        format.html { redirect_to(@data_mime) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_mime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_mimes/1
  # DELETE /data_mimes/1.xml
  def destroy
    @data_mime = DataMime.find(params[:id])
    @data_mime.destroy

    respond_to do |format|
      format.html { redirect_to(data_mimes_url) }
      format.xml  { head :ok }
    end
  end
end
