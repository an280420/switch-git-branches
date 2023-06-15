## This script to quickly switch between "dev" and "master" branches in all plugins in the current directory 
# Commands to run '$ ruby switch_branches.rb master' or '$ ruby switch_branches.rb dev'

branch = ARGV[0]

unless branch && (branch == 'dev' || branch == 'master')
  puts "Usage: ruby switch_branches.rb <branch>"
  puts "Please provide either 'dev' or 'master' as the branch parameter."
  exit
end

directories = Dir.glob('*').select { |dir| File.directory?(dir) }

directories.each do |dir|
  Dir.chdir(dir) do
    puts "Switching to '#{branch}' branch in #{dir}..."
    system("git checkout #{branch}")
    # # uncomment below line to update from remote repository
    # system("git pull")
  end
end
