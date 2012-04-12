class Subscriber < ActiveRecord::Base
  validates :email, :presence => true, :format => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :allow_blank => true
end
