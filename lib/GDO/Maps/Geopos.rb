class GDO::Maps::Geopos
  
  def initialize(lat, lng)
    @lat = lat
    @lng = lng
  end
  
  def _lat; @lat; end
  def lat(lat); @lat = lat; self; end
  def _lng; @lng; end
  def lng(lng); @lng = lng; self; end
  
  ############
  ### Math ###
  ############
  def self.distance_between(lat1, lng1, lat2, lng2)
    20.0
  end
  
end