class ApplicationController < ActionController::Base
  before_action :write_log

  def write_log
    # Store log in mongo db
    Log.create(controller: controller_name, action: action_name)
  end
end
