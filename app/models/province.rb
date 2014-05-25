# == Schema Information
#
# Table name: provinces
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  geom       :spatial          multipolygon, 4326
#

class Province < ActiveRecord::Base
  include Featurable

  featurable :geom, [:name]
end
