task :staticlib do
  Dir.chdir "StaticLib"
  puts `rm *.o`
  puts `rm *.a`
  puts `clang -c  src/staticlib.c`
  puts `ar rcs staticlib.a staticlib.o`
  Dir.chdir '..'
end

task :build do
  puts `swift build`
end

task :run do
  puts `./.build/x86_64-apple-macosx/debug/app`
end
