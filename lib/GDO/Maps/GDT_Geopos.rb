#
# Stores lat/lng in a single field.
#
# @see GDT_Lat, GDT_Lng, GDT_Geoposition
#
#
class GDO::Maps::GDT_Geopos < GDO::DB::GDT_String

  def to_var(value)
    value == nil ? nil : "[#{value._lat},#{value._lng}]"
  end
  
  def to_value(var)
    return nil if var.nil?
    lat, lng = var.trim("[]").split(",")
    ::GDO::Map::Geopos.new(lat, lng)
  end

end
