module Lmb
  module Developers
    class Loyalty
      attr_reader :configuration

      # Paths to methods
      VOUCHER_EXPIRED_PATH = '/v1/loyalty/voucher/expired'.freeze
      VOUCHER_PROVISIONED_PATH = '/v1/loyalty/voucher/provisioned'.freeze
      VOUCHER_ACTIVATED_PATH = '/v1/loyalty/voucher/activated'.freeze
      SCORING_REDEMPTION_PATH = '/v1/loyalty/redemption'.freeze

      # Set Inhabitant's Expired Vouchers.
      #
      # @param expirations [Hash] the expriations object.
      # @return [Boolean]
      def self.voucher_expired(expirations)
        uri = URI.parse("#{configuration.url}#{VOUCHER_EXPIRED_PATH}")
        request = Net::HTTP::Post.new(uri)
        request['Apikey'] = configuration.api_key.to_s
        request['Cache-Control'] = 'no-cache'
        request.body = JSON.dump(
          'expirations' => expirations
        )
        req_options = {
          use_ssl: uri.scheme == 'https'
        }
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        response.code.to_i == 202
      rescue StandardError => exception
        exception
      end

      # Set Inhabitant's Provisioned Vouchers.
      #
      # @param expirations [Hash] the provisions object.
      # @return [Boolean]
      def self.voucher_provisioned(provisions)
        uri = URI.parse("#{configuration.url}#{VOUCHER_PROVISIONED_PATH}")
        request = Net::HTTP::Post.new(uri)
        request['Apikey'] = configuration.api_key.to_s
        request['Cache-Control'] = 'no-cache'
        request.body = JSON.dump(
          'provisions' => provisions
        )
        req_options = {
          use_ssl: uri.scheme == 'https'
        }
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        response.code.to_i == 202
      rescue StandardError => exception
        exception
      end

      # Set Inhabitant's Activated Vouchers.
      #
      # @param expirations [Hash] the activations object.
      # @return [Boolean]
      def self.voucher_activated(activations)
        uri = URI.parse("#{configuration.url}#{VOUCHER_ACTIVATED_PATH}")
        request = Net::HTTP::Post.new(uri)
        request['Apikey'] = configuration.api_key.to_s
        request['Cache-Control'] = 'no-cache'
        request.body = JSON.dump(
          'activations' => activations
        )
        req_options = {
          use_ssl: uri.scheme == 'https'
        }
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        response.code.to_i == 202
      rescue StandardError => exception
        exception
      end

      # Get configuration.
      def self.configuration
        @configuration = Lmb::Developers.configuration
      end

      def self.redemption(redemptions)
        uri = URI.parse("#{configuration.url}#{SCORING_REDEMPTION_PATH}")
        request = Net::HTTP::Post.new(uri)
        request['Apikey'] = configuration.api_key.to_s
        request['Cache-Control'] = 'no-cache'
        request.body = redemptions
        req_options = {
          use_ssl: uri.scheme == 'https'
        }
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        response.code.to_i == 202
      rescue StandardError => exception
        exception
      end
    end
  end
end
