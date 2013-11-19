class UserProfilesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @profile = current_user.profile
  end

  def new 
    @profile = UserProfile.new
  end

  def create
    @profile = UserProfile.new(user_profile_params)  
    @profile.user = current_user

    if @profile.save
      flash[:success] = "Dein Profile wurde erfolgreich erstellt."
      render :index
    else      
      flash[:error] = "Es gab Probleme beim Anlegen deines Profils. #{@profile.errors.full_messages.to_sentence}"
      render :new
    end
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update_attributes(user_profile_params)
      flash[:success] = "Dein Profil wurde erfolgreich aktualisiert."
      render :index
    else
      flash[:error] = "Es gab Probleme bei der Aktualisierung deines Profils. #{@profile.errors.full_messages.to_sentence}"
      render :edit
    end
  end

  private

  def user_profile_params
   params.require(:user_profile).permit(:telephone_number, :biography) 
  end

end
