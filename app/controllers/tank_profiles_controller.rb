class TankProfilesController < ApplicationController
  before_action :set_own_tank_profile, only: [:edit, :update, :destroy]
	layout "form"
  access all: [:show, :index, :home], user: :all, site_admin: :all
	# before_action :authenticate_user!
  # GET /tank_profiles
  def index
    @tank_profiles = TankProfile.all
  end

  # GET /tank_profiles/1
	def show
		@tank_profile = TankProfile.find(params[:id])
  end

  # GET /tank_profiles/new
  def new
    @tank_profile = TankProfile.new
  end

  # GET /tank_profiles/1/edit
  def edit
  end

  # POST /tank_profiles
  def create
    @tank_profile = current_user.tank_profiles.new(tank_profile_params)

    if @tank_profile.save
      redirect_to @tank_profile, notice: 'Tank profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tank_profiles/1
  def update
    if @tank_profile.update(tank_profile_params)
      redirect_to @tank_profile, notice: 'Tank profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tank_profiles/1
  def destroy
    @tank_profile.destroy
    redirect_to tank_profiles_url, notice: 'Tank profile was successfully destroyed.'
  end

	def home
		@tanks = TankProfile.all 
	end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_own_tank_profile
			@tank_profile = current_user.tank_profiles.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
		def tank_profile_params
      params[:tank_profile].permit(:profile_name, :display, :stand, :sump, :lighting, :filtration, :return_pump, :water_cirrculation, :calcium_reactor, :auto_top_off, :heating_and_cooling, :other_equipment)
    end
end
