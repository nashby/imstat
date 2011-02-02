spec = Gem::Specification.new do |s|

  s.name              = "imstat"
  s.version           = 0.1
  s.authors           = ['Vasiliy Ermolovich']
  s.email             = ['younash@gmail.com']
  s.summary           = "Check user status in the instant messengers from ruby"
  s.description       = 'Check user status in the instant messengers from ruby'
  s.homepage          = 'https://github.com/nashby/imstat'
  s.has_rdoc          = true

  s.files             = Dir["lib/**/*.rb", "*.rdoc", "Rakefile", "test/*.*"]
  s.test_files        = Dir.glob "test/*_test.rb"

end