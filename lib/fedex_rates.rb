# lib/fedex_rates.rb
require "fedex_rates/version"
require "httparty"
require "nokogiri"

module Fedex
  module Rates
    class Error < StandardError; end

    def self.get(credentials, quote_params)
      raise "NotImplemented"
    end

    private

    def self.build_xml_request(credentials, quote_params)
      # Implementar la lógica para construir la solicitud XML utilizando
      # las credenciales y los parámetros de cotización proporcionados
      raise "NotImplemented"
    end

    def self.parse_xml_response(response)
      # Implementar la lógica para analizar la respuesta XML y devolver
      # las tarifas de envío en el formato esperado
      raise "NotImplemented"
    end
  end
end
