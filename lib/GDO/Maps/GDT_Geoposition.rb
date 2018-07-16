#
# UI Component that connects a GDT_Lat and a GDT_Lng
#
# @see GDT_Lat, GDT_Lng
#
class GDO::Maps::GDT_Geoposition < GDO::Core::GDT

  def _lat_field; @lat_field; end
  def lat_field(lat_field); @lat_field = lat_field; self; end

  def _lng_field; @lng_field; end
  def lng_field(lng_field); @lng_field = lng_field; self; end
  
  def _var
    lat = gdo.get_var(@lat_field)
    lng = gdo.get_var(@lng_field)
    return nil if lat.nil? or lng.nil?
    "#{lat},#{lng}"
  end
  
  def to_value(var)
    return nil if var.nil?
    lat, lng = *var.split(',').map{|v|v.to_f}
    ::GDO::Maps::Geopos.new(lat, lng)
  end

end
