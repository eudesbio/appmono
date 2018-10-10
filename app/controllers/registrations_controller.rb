class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:admin,
                                                                 :nome,
                                                                 :telefone,
                                                                 :email,
                                                                 :password

      )}
  end
end
