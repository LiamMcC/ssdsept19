class SiteContentsController < ApplicationController
  before_action :set_site_content, only: [:show, :edit, :update, :destroy]

  # GET /site_contents
  # GET /site_contents.json
  def index
    @site_contents = SiteContent.all
  end

  # GET /site_contents/1
  # GET /site_contents/1.json
  def show
  end

  # GET /site_contents/new
  def new
    @site_content = SiteContent.new
  end

  # GET /site_contents/1/edit
  def edit
  end

  # POST /site_contents
  # POST /site_contents.json
  def create
    @site_content = SiteContent.new(site_content_params)

    respond_to do |format|
      if @site_content.save
        format.html { redirect_to @site_content, notice: 'Site content was successfully created.' }
        format.json { render :show, status: :created, location: @site_content }
      else
        format.html { render :new }
        format.json { render json: @site_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_contents/1
  # PATCH/PUT /site_contents/1.json
  def update
    respond_to do |format|
      if @site_content.update(site_content_params)
        format.html { redirect_to @site_content, notice: 'Site content was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_content }
      else
        format.html { render :edit }
        format.json { render json: @site_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_contents/1
  # DELETE /site_contents/1.json
  def destroy
    @site_content.destroy
    respond_to do |format|
      format.html { redirect_to site_contents_url, notice: 'Site content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_content
      @site_content = SiteContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_content_params
      params.require(:site_content).permit(:title, :heading1, :heading2, :location)
    end
end
