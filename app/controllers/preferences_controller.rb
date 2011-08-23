class PreferencesController < ApplicationController
  before_filter :authenticate_user!
  
  def preference
    @preference = current_user.preference
    @preference = current_user.build_preference if @preference.nil? 
  end
  
  def create
    @preference = current_user.build_preference(params[:preference])
    if @preference.save
      redirect_to(books_path, :notice => 'Welcome to bookistha.com, we are happy to have you on board.')
    else
      render :action => "preference" 
    end
  end

  def update
    @preference = current_user.preference
    if @preference.update_attributes(params[:preference])
      redirect_to(books_path, :notice => 'Your preferences were updated successfully.')
    else
      render :action => "preference" 
    end
  end
end
