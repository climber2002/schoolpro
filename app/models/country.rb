# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  iso_code   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  geom       :spatial          multipolygon, 4326
#

class Country < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator

end
