#
#
#
class GDO::Maps::GDT_Lat < GDO::DB::GDT_Decimal
  
  def initialize(name=nil)
    super
    min(-90.0)
    max(+90.0)
    digits(3, 12)
  end
  
end
