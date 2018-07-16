require "GDO"
#
# @author gizmore@wechall.net
#
module GDO::Maps
  VERSION = 1.00
  extend ::GDO::Autoloader # Own GDO Autoloader
end

# Autoload module
::GDO::Maps::Module.instance
