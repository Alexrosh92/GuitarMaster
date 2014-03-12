class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  def set_locale
    if cookies[:mfs_locale]
      locale = cookies[:mfs_locale]
      locale = :en unless %w(ru en).include?(locale.to_s)
      I18n.locale = locale.to_sym
    end
  end
  def change_locale
    return_to = CGI.unescape(params[:return_to].to_s)
    locale = params[:locale]
    locale = :en unless %w(ru en).include?(locale.to_s)
    I18n.locale = locale.to_sym
    cookies.permanent[:mfs_locale] = locale.to_sym
    redirect_to (return_to == '' ? root_url : return_to)
  end
end
