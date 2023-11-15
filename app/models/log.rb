class Log
  include Mongoid::Document
  include Mongoid::Timestamps # auto generate created_at, updated_at when create / update record

  field :controller, type: String
  field :action, type: String
end
