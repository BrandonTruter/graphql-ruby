# frozen_string_literal: true

module Types
  class QueryType < BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, resolver: Resolvers::LinksSearch

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end
  end
end
