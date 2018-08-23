class TankProfilesController < ApplicationController
  before_action :set_tank_profile, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /tank_profiles
  def index
    @tank_profiles = TankProfile.all
  end

  # GET /tank_profiles/1
  def show
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
    @tank_profile = TankProfile.new(tank_profile_params)

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tank_profile
      @tank_profile = TankProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tank_profile_params
      params[:tank_profile]
    end
end
