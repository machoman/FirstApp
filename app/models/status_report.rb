class StatusReport < ActiveRecord::Base
belongs_to :outage_type


validates :name, :start_time, :affected_groups, :affected_services, :description, :created_by, :presence => true

validates :start_time, :end_time, :numericality => {:only_integer => true, :less_than => 2400}
end
