class VideoController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /video
  # GET /video.json
  def index
    @video = Video.all
  end

  # GET /video/1
  # GET /video/1.json
  def show
  end

  # GET /video/new
  def new
    @video = Video.new
  end

  # GET /video/1/edit
  def edit
  end

  # POST /video
  # POST /video.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video/1
  # PATCH/PUT /video/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video/1
  # DELETE /video/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to video_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:title, :about)
    end
end
