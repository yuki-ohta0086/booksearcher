# frozen_string_literal: true
module Book
  module Searcher
    class Find_book
      GOOGLEAPI_URL = 'https://www.googleapis.com/books/v1/volumes?q='

      def get_book_json(params)
        uri = URI.parse(GOOGLEAPI_URL + params)
        resources = Net::HTTP.get(uri)
        json_data = JSON.parse(resources)
        puts json_data
      end
    end
    class Error < StandardError; end
    # Your code goes here...
  end
end
