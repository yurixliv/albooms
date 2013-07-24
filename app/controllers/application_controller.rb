class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :intercept_html_requests
  layout nil
  respond_to :json, :html

  private

  def intercept_html_requests
    if params[:format] == 'ng'
      render("/#{params[:controller]}/#{params[:action]}.html.haml", layout: false)
    elsif request.format == Mime::HTML
      render('layouts/application')
    end
  end
end
