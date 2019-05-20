module Lmb
    module Developers
      class Configuration
        attr_accessor :api_key,
                      :environment
        attr_reader :url
        
        # Initial config.
        def initialize
            @config = {
                'DEV' => {
                    'url': 'https://api-dev.leroymerlin.com.br'
                },
                'TEST' => {
                    'url': 'https://api-test.leroymerlin.com.br'
                },
                'PROD' => {
                    'url': 'https://api.leroymerlin.com.br'
                }
            }
            configure('DEV', nil)
        end
        # Configure global parameters
        #
        # @param environment [String] environment to consume APIs, `TEST` or `PROD`
        # @param api_key [String] ApiKey to consume APIs.
        # @return [Lmb::Developers::Configuration]
        def configure(environment = 'DEV', api_key)
            @api_key = api_key
            @environment = environment
            @url = @config[environment][:url]
            self
        end
      end
    end
end