class ProfilesController < ApplicationController
  before_action :authenticate_admin!, except: [:show, :new, :create]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  
  # GET /profiles
  # GET /profiles.json
  def index
    if current_admin.role == 'jia.super.admin'
      @profiles = Profile.all.order( created_at: 'DESC' )
    elsif current_admin.role == 'jia.cdo.super.admin'
      @profiles = Profile.where( church_id: [1,2,3,4] ).order( created_at: 'DESC' )
    elsif current_admin.role == 'jia.cdo.main.super.admin'
      @profiles = Profile.where( church_id: 1 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'acts.super.admin'
      @profiles = Profile.where( church_id: 2 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'ywav.super.admin'
      @profiles = Profile.where( church_id: 3 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'jtc.super.admin'
      @profiles = Profile.where( church_id: 4 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'iligan.super.admin'
      @profiles = Profile.where( church_id: 5 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'laguindingan.super.admin'
      @profiles = Profile.where( church_id: 6 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'igpit.super.admin'
      @profiles = Profile.where( church_id: 7 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'agora.super.admin'
      @profiles = Profile.where( church_id: 8 ).order( created_at: 'DESC' )
    elsif current_admin.role == 'kibungsod.super.admin'
      @profiles = Profile.where( church_id: 9 ).order( created_at: 'DESC' )
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
    @profile.user_events.build
  end

  # GET /profiles/1/edit
  def edit
    @profile.user_events.build
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Successfully registered. See you in 28th JIA Anniversary.' }
        format.json { render :new, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
        format.json { render :index, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find_by( id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:firstname, :lastname, :middlename, :cell_leader, :admin_id, :category_id, :church_id, :payment, :status)
    end
end
