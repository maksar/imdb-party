require 'delegate'
module ImdbParty
  class SearchResult < DelegateClass(Hash)

    def initialize(options)
      super(options)
    end

    def icon(size = 256)
      return nil unless self[:poster_url]

      self[:poster_url].gsub(/^(.*)(_V1_)(.*)$/, "\\1\\2SY#{size}\\3")
    end

  end
end

