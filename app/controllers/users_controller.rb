class UsersController < AuthenticatedController
  def show
  	@tasks = current_user.tasks.all
  end
end
