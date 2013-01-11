class MispronunciationsController < ApplicationController
  # GET /mispronunciations
  # GET /mispronunciations.json
  def index
    @mispronunciations = Mispronunciation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mispronunciations }
    end
  end

  # GET /mispronunciations/1
  # GET /mispronunciations/1.json
  def show
    @mispronunciation = Mispronunciation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mispronunciation }
    end
  end

  # GET /mispronunciations/new
  # GET /mispronunciations/new.json
  def new
    @mispronunciation = Mispronunciation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mispronunciation }
    end
  end

  # GET /mispronunciations/1/edit
  def edit
    @mispronunciation = Mispronunciation.find(params[:id])
  end

  # POST /mispronunciations
  # POST /mispronunciations.json
  def create
    @mispronunciation = Mispronunciation.new(params[:mispronunciation])

    respond_to do |format|
      if @mispronunciation.save
        format.html { redirect_to @mispronunciation, :notice => 'Mispronunciation was successfully created.' }
        format.json { render :json => @mispronunciation, :status => :created, :location => @mispronunciation }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mispronunciation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mispronunciations/1
  # PUT /mispronunciations/1.json
  def update
    @mispronunciation = Mispronunciation.find(params[:id])

    respond_to do |format|
      if @mispronunciation.update_attributes(params[:mispronunciation])
        format.html { redirect_to @mispronunciation, :notice => 'Mispronunciation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mispronunciation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mispronunciations/1
  # DELETE /mispronunciations/1.json
  def destroy
    @mispronunciation = Mispronunciation.find(params[:id])
    @mispronunciation.destroy

    respond_to do |format|
      format.html { redirect_to mispronunciations_url }
      format.json { head :no_content }
    end
  end
end
