working_dir = File.dirname(__FILE__)
Dir.chdir(working_dir)

require 'pp'
require './parameters'
require $neo_dir+'/neo'

Neo.app_dir = '.'
Neo.dir = $neo_dir
Neo.init


raise 'You must give a command to execute --' if ARGV[0].nil?

module_name, command_name = ARGV[0].split(':')
commands = {}

if module_name != 'neo'
  Dir[Neo.app_dir+'/modules/'+module_name+'/commands/*'].each do |f|
    commands[f.split('/')[-1].gsub('.rb','')] = f
  end
else
  Dir[Neo.dir+'/commands/*'].each do |f|
    commands[f.split('/')[-1].gsub('.rb','')] = f
  end
end


Neo::Config.main[:env] = 'dev'

if commands.key?command_name
	require commands[command_name]
	params = nil
	params = ARGV[1..-1] if ARGV.length>1
	console_class = eval(module_name.camelize+'::Commands::'+command_name.camelize+'.new')
	if params.nil?
		console_class.send('run')
	else
		console_class.send('run', *params)
	end
else
	pp 'Command Not Found: '+ARGV[0]
end