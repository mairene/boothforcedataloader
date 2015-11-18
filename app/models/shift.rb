class Shift < SalesforceModel
  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.shift_time__c'
  
  belongs_to :area, :primary_key => 'sfid', :foreign_key => 'area_zone__c'
  has_many :assignments, :primary_key => "sfid", :foreign_key => 'shift_time__c'

  attr_protected :createddate, :systemmodstamp, :lastmodifieddate
end
