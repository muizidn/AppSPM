task :staticlib do
  Dir.chdir "StaticLib"
  puts `rm *.o`
  puts `rm *.a`
  puts `clang -c  src/staticlib.c`
  puts `ar rcs staticlib.a staticlib.o`
  Dir.chdir '..'
end

task :carthagebuild do
  puts `carthage update --cache-builds --no-use-binaries --platform macOS`
end

def swift_options
  kOpts = {
    "-Xswiftc" => [
      "-F./Carthage/Build/Mac"
    ],
    "-Xlinker" => [
      "./StaticLib/staticlib.a",
      "-rpath",
      "./Carthage/Build/Mac"
    ]
  }
  kOpts.map { |key, value| 
    value.map { |i| "#{key} #{i}" }.join(" ")
  }.join(" ")
end

task :swiftbuild do
  puts `swift build #{swift_options}`
end

task :run do
  puts `./.build/x86_64-apple-macosx/debug/app`
end

task :bootstrap do
  puts `carthage update --no-build`
  dirs = Dir.glob("Carthage/Checkouts/**").select { |f| File.directory? f }  
  dirs.each do |dir|
    kPackageManifest = Dir.glob("#{dir}/Package.swift")
    kXcodeproj = Dir.glob("#{dir}/*.xcodeproj")
    if kXcodeproj.empty? && !kPackageManifest.empty?
      pwd = Dir.pwd
      Dir.chdir dir
      puts `swift package generate-xcodeproj`
      Dir.chdir pwd
    end
  end
end
