module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # declaring an identification means that a attr_accessor is automatically
    # set for that key. So we will be able to access Connection.uuid for every
    # user. I think...
    identified_by :uuid

    def connect
      self.uuid = SecureRandom.urlsafe_base64
    end
  end
end
