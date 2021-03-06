class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::UnpermittedParameters, with: :unpermitted_param
  rescue_from ActionController::RoutingError, with: :page_not_found

  def record_not_found(exception)
    render status: 404, json: { 'message' => 'page not found' }
  end

  def unpermitted_param(exception)
    render status: 422, json: { 'message' => exception.message }
  end

  def not_found_response(resource)
    render status: 422, json: { 'message' => resource.errors }
  end

  def page_not_found
    render status: 404, json: { 'message' => 'page not found' }
  end

end