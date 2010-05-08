class CattypesController < ApplicationController
  # GET /cattypes
  # GET /cattypes.xml
  def index
    @cattypes = Cattype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cattypes }
    end
  end

  # GET /cattypes/1
  # GET /cattypes/1.xml
  def show
    @cattype = Cattype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cattype }
    end
  end

  # GET /cattypes/new
  # GET /cattypes/new.xml
  def new
    @cattype = Cattype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cattype }
    end
  end

  # GET /cattypes/1/edit
  def edit
    @cattype = Cattype.find(params[:id])
  end

  # POST /cattypes
  # POST /cattypes.xml
  def create
    @cattype = Cattype.new(params[:cattype])

    respond_to do |format|
      if @cattype.save
        flash[:notice] = 'Cattype was successfully created.'
        format.html { redirect_to(@cattype) }
        format.xml  { render :xml => @cattype, :status => :created, :location => @cattype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cattype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cattypes/1
  # PUT /cattypes/1.xml
  def update
    @cattype = Cattype.find(params[:id])

    respond_to do |format|
      if @cattype.update_attributes(params[:cattype])
        flash[:notice] = 'Cattype was successfully updated.'
        format.html { redirect_to(@cattype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cattype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cattypes/1
  # DELETE /cattypes/1.xml
  def destroy
    @cattype = Cattype.find(params[:id])
    @cattype.destroy

    respond_to do |format|
      format.html { redirect_to(cattypes_url) }
      format.xml  { head :ok }
    end
  end
end
