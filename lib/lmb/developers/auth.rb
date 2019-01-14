module Lmb
    module Developers
        class Auth
            attr_reader :configuration
            
            # Path to consume login
            AUTH_PATH = '/v1/auth/login'

            # Check if user is valid in LMB Ldap.
            #
            # @param username [String] the ldap username.
            # @param password [String] the ldap password.
            # @param user_type [String] the ldap user_type, `employee` (default), `customer` or `supplier`
            # @return [Hash] when login successful.
            #  * [String] :userType LDAP user_type
            #  * [String] :username LDAP of the employee
            #  * [String] :employeeID ID of the employee
            #  * [String] :employeeType EmployeeType
            #  * [String] :fullName Full Name of the user 
            #  * [String] :givenName Given Name of the user
            #  * [String] :surname Surname of the user
            #  * [String] :title Mission designated to the user
            #  * [String] :titleCode Code of mission designated to the user
            #  * [String] :locationName Site where the user works
            #  * [String] :locationCode Code from site where the user works
            #  * [String] :department Department of the user
            #  * [Date] :contractStartDate Contract start date of the user
            #  * [String] :email Email of the user
            #  * [String] :Telephone number of the user's department
            #  * [String] :mobile Mobile phone number of the user
            #  * [String] :manager Manager's distinguish name from LDAP
            #  * [String] :o Brands abbreviation. E.g. LM for Leroy Merlin
            #  * [String] :ou Organization unit
            #  * [Date] :birthdate Birthdate from user
            #  * [String] :createdBy Distinguish name from user that created the registry in LDAP
            #  * [String] :modifiedBy Distinguish name from user that modified the registry in LDAP
            #  * [Byte] :jpegPhoto Binary Base64 represeting JPEG photo.   
            # @return [Lmb::Developers::Error] when login failure.
            def self.login username, password, user_type = 'employee'
                begin
                    uri = URI.parse("#{configuration.url}#{AUTH_PATH}")
                    request = Net::HTTP::Post.new(uri)
                    request.content_type = "application/x-www-form-urlencoded"
                    request["Apikey"] = "#{configuration.api_key}"
                    request["Cache-Control"] = "no-cache"
                    request.body = "username=#{username}&password=#{password}&userType=#{user_type}"
                    req_options = {
                        use_ssl: uri.scheme == "https",
                    }
                    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
                        http.request(request)
                    end
                    result = JSON.parse(response.body)
                    if response.code.to_i == 200
                        result
                    else
                        fail Error, JSON.parse(response.body)
                    end
                rescue => exception
                    exception
                end

            end
            
            # Get configuration.
            def self.configuration
                @configuration = Lmb::Developers.configuration
            end
        end
    end
end