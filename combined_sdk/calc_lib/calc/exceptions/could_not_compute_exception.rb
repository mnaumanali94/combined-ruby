# calc
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CombinedSdk
  module Calc
  # Is thrown when invalid input is given such as div by zero
  class CouldNotComputeException < APIException
    # Represents the server's exception message
    # @return [String]
    attr_accessor :server_message

    # Represents the server's error code
    # @return [Integer]
    attr_accessor :server_code

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @server_message = hash['ServerMessage']
      @server_code = hash['ServerCode']
    end
  end
end
end