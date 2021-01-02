
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "book-searcher/searcher/version"

Gem::Specification.new do |spec|
  spec.name          = "book-searcher"
  spec.version       = Book::Searcher::VERSION
  spec.authors       = ["yuki-ohta0086"]
  spec.email         = ["yukiohta0823@gmail.com"]

  spec.summary       = %q{GoogleBooksAPI use.}
  spec.description   = %q{It uses google to search for books.}
  spec.homepage      = "https://github.com/yuki-ohta0086/booksearcher.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/yuki-ohta0086/booksearcher"
    spec.metadata["changelog_uri"] = "https://github.com/yuki-ohta0086/booksearcher"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_dependency "json"
end
