# frozen_string_literal: true

module PostnummerNorge
  class PostalCode
    attr_reader :code, :name, :municipality_code, :municipality, :category

    class << self
      def exists?(code)
        find(code) ? true : false
      end

      def find(code)
        matches = postal_codes.select { |pc| pc.code == code.to_s }
        !matches.empty? ? matches.first : nil
      end

      def find_by_name(name)
        matches = postal_codes.select { |pc| pc.name.downcase == name.to_s.downcase }
        !matches.empty? ? matches : nil
      end

      def postal_codes
        @postal_codes ||= load_postal_codes
      end

      def load_postal_codes
        File.open(data_file, "r", &:read).split("\n").compact.map do |line|
          new(*line.split("\t"))
        end
      end

      def data_file
        File.join(File.dirname(__FILE__), "postal_codes.tab")
      end
    end

    def initialize(code, name, municipality_code, municipality, category)
      @code = code
      @name = name
      @municipality_code = municipality_code
      @municipality = municipality
      @category = category
    end
  end
end
