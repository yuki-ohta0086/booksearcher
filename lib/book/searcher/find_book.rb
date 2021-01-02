# frozen_string_literal: true
require 'net/http'
require 'uri'
require 'json'
module Book
  module Searcher
    class Find_book
      GOOGLEAPI_URL = 'https://www.googleapis.com/books/v1/volumes?q='

      def get_book_json(params)
        return if params.nil?
        uri = URI.parse(GOOGLEAPI_URL + params)
        resources = Net::HTTP.get(uri)
        puts resources
      end
    end
    class Error < StandardError; end
    # Your code goes here...
  end
end
