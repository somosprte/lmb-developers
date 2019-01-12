module Lmb
    module Developers
      class Configuration

        def initialize
            @config = {
                'TEST' => {
                    'url': 'https://api-test.leroymerlin.com.br'
                },
                'PROD' => {
                    'url' => 'https://api.leroymerlin.com.br',
                }
            }
            configure('TEST', nil)
        end

        def configure(enviroment = 'TEST', api_key)
            @api_key = api_key
            @enviroment = enviroment
        end
      end
    end
end