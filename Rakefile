require "inch/rake"

task :default => [ :test ]

task :test do
  ruby "-Ilib", "tests/tests.rb"
end

Inch::Rake::Suggest.new("doctest") do |suggest|
  suggest.args << "--pedantic"
end

task :build do
  system "gem", "build", "./expd.gemspec"
end
