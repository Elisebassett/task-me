# frozen_string_literal: true

# Use full modules instead of defining classes like "Users::ConfigurationsController":
module Users # This ensures that module is already defined when you're defining a class.
  class ConfirmationsController < Devise::ConfirmationsController
    # Also remove this if you're not overriding any of the Devise stuff - it doesn't need to exist.

    # GET /resource/confirmation/new
    # def new
    #   super
    # end

    # POST /resource/confirmation
    # def create
    #   super
    # end

    # GET /resource/confirmation?confirmation_token=abcdef
    # def show
    #   super
    # end

    # protected

    # The path used after resending confirmation instructions.
    # def after_resending_confirmation_instructions_path_for(resource_name)
    #   super(resource_name)
    # end

    # The path used after confirmation.
    # def after_confirmation_path_for(resource_name, resource)
    #   super(resource_name, resource)
    # end
  end

end
