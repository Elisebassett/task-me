# This file is originally indented with tabs: configure your editor to use 2 spaces for Ruby.
# It is the industry standard:
#
# https://github.com/bbatsov/ruby-style-guide
# https://github.com/bbatsov/rails-style-guide

class HomeController < ApplicationController
  def index
		# Most websites have some public area, available to users without authentication,
		# and then some kind of admin (or user) area, where users must be logged in to see it.
		#
		# The enforcement of authentication is better done with "before_action" - filters.
		# I even create a base classes for controllers like "AuthenticatedController",
		# where I put the "before_filter" that automatically redirects the user to one
		# of the public pages if user is not authenticated, with some kind of message:
		# "You're not authenticated, go away"
		#
		# Then I inherit all user-level or admin controllers from the "AuthenticatedController".
		# I created one as an example.
  	if user_signed_in?
  		redirect_to current_user
  	# else
  	# 	redirect_to new_user_session_path
  	end
  end
end
