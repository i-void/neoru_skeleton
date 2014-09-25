require 'pp'
require 'rspec'

require "#{File.dirname(__FILE__)}/parameters"
require $neo_dir+'/neo'

Neo.app_dir = $app_dir
Neo.dir = $neo_dir
Neo.init
Neo::I18N.init

Neo::Selenium.init