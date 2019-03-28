class Users::OmniauthController < ApplicationController
	def google_oauth2
	  @user = User.create_from_provider_data(request.env['omniauth.auth'])
	  if @user.persisted?
	    sign_in @user
	    redirect_to user_path(@user)
	  else
	    flash[:error] = 'There was a problem signing you in through Google. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end 
	end
	def failure
	  flash[:error] = 'There was a problem signing you in. Please register or try signing in later.' 
	  redirect_to new_user_registration_url
	end
	# facebook callback
	def facebook
	  @user = User.create_from_provider_data(request.env['omniauth.auth'])
	  if @user.persisted?
	    sign_in @user
	    redirect_to user_path(@user)
	  else
	    flash[:error] = 'There was a problem signing you in through Facebook. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end 
	end

	def github
	  @user = User.create_from_provider_data(request.env['omniauth.auth'])
	  if @user.persisted?
	    sign_in @user
	    redirect_to user_path(@user)
	  else
	    flash[:error] = 'There was a problem signing you in through Github. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end
	end

	def twitter
	  @user = User.create_from_provider_data(request.env['omniauth.auth'])
	  if @user.persisted?
	    sign_in @user
	    redirect_to user_path(@user)
	  else
	    flash[:error] = 'There was a problem signing you in through Twitter. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end 
	end
end
