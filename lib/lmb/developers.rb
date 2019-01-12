require 'net/http'
require 'json'
require 'lmb/developers/auth'
require 'lmb/developers/errors'

module Lmb
    module Developers
        class << self
            def auth
                @auth ||= Lmb::Developers::Auth.new
            end
        end
    end
end