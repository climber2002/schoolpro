class Country < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator

end
