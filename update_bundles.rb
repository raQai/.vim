#!/usr/bin/env ruby

git_bundles = [
  "git://github.com/kien/ctrlp.vim",
  "git://github.com/scrooloose/nerdcommenter",
  "git://github.com/scrooloose/nerdtree",
  "git://github.com/derekwyatt/vim-scala",
  "git://github.com/drmingdrmer/xptemplate",
]   

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

puts "trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end
