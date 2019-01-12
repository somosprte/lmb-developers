module Lmb
    module Developers
        class  Auth

            # Check if user is valid in LMB Ldap.
            #
            # @param username [string] the ldap username.
            # @param password [string] the ldap password.
            # @param user_type [string] the ldap user_type, `employee` (default), `customer` or `supplier`
            # @return [String] the object converted into the expected format.
            def self.login username, password, user_type = 'employee'
                begin
                    uri = URI.parse("https://api-test.leroymerlin.com.br/v1/auth/login")
                    request = Net::HTTP::Post.new(uri)
                    request.content_type = "application/x-www-form-urlencoded"
                    request["Apikey"] = ""
                    request["Cache-Control"] = "no-cache"
                    request.body = "username=#{username}&password=#{password}&userType=#{user_type}"
        
                    req_options = {
                        use_ssl: uri.scheme == "https",
                    }
        
                    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
                        http.request(request)
                    end
        
                    result = JSON.parse(response.body)
                    if response.code == 200
                        result
                    else
                        fail Error, JSON.parse(response.body)
                    end
        
                rescue => exception
                    exception
                end

            end
        end
    end
end