require 'net/http'
require 'json'
require 'lmb/developers/configuration'
require 'lmb/developers/auth'
require 'lmb/developers/error'
module Lmb
    module Developers
        class << self
            attr_reader :configuration
            
            # Configure global parameters
            #
            # @param environment [String] environment to consume APIs, `TEST` or `PROD`
            # @param api_key [String] ApiKey to consume APIs.
            # @return [Lmb::Developers::Configuration]
            def configure(environment, api_key)
                configuration.configure(environment, api_key)
            end
            
            # Instace or return global configuration
            def configuration
                @configuration ||= Configuration.new
            end
        end
    end
end