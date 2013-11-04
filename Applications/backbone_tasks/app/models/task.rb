class Task
  include Mongoid::Document
  field :body, type: String
  field :complete, type: Boolean
  field :due, type: DateTime
  field :title, type: String

  #validations
  validates_presence_of :title, :body
end
