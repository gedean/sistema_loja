class ApplicationController < ActionController::Base
before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
  render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
  end
end
