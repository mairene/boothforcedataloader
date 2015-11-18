class Area < SalesforceModel
  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.area__c'

  has_many :booths, :primary_key => "sfid", :foreign_key => "area_zone__c"
  has_many :shifts, :primary_key => "sfid", :foreign_key => "area_zone__c"

  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
