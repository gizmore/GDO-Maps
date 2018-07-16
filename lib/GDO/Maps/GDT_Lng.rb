#
#
#
class GDO::Maps::GDT_Lng < GDO::DB::GDT_Decimal
  
  def initialize(name=nil)
    super
    min(-180.0)
    max(+180.0)
    digits(3, 12)
  end
  
end
