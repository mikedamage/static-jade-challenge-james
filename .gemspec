# Spiral RubyGem specification. Shhh... don't tell the kids it's really awk.

Gem::Specification.new do |s|
	s.name     = 'spiral-script'
	s.version  = '0.1.0'
	s.summary  = 'Free-form static site generator'
	s.authors  = [ 'James Andino', 'Mike Green' ]
	s.email    = 'mike.is.green@gmail.com'
	#s.files   = [ 'lib/lirps.awk' ]
	s.files    = []
	s.homepage = 'http://github.com/totheleftpanda/spiral'
	s.platform = Gem::Platform::RUBY
	s.require_paths << 'lib' 
end
