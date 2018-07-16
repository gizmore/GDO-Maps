#
# Maps module for GDO.
#
# @version 1.00
# @since 1.00
# @author gizmore@wechall.net
# @license MIT
#
class GDO::Maps::Module < GDO::Core::GDO_Module
  ##############
  ### Module ###
  ##############
  is_module __FILE__ # Register as GDO module
#  def on_load_language; load_language('lang/maps'); end # Load Trans file
  
  ##################
  ### GDO tables ###
  ##################
  #
  # Tables to install.
  #
  def tables
    [
    ]
  end
  
  ##############
  ### Config ###
  ##############
  #
  # @return [GDT[]]
  #
  def module_config
    [
      ::GDO::Maps::GDT_Geopos.new(:server_geopos).initial("[10,50]")
    ]
  end

end
