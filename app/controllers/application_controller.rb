class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from Exception, with: :error500

  def error500(e)
    logger.error [e, *e.backtrace].join("\n")
    render 'error500', status: 500, formats: [:html]
  end
end
