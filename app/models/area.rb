class Area < SalesforceModel
  self.table_name =  'salesforce.area_zone__c'

  has_many :booths, :primary_key => "sfid", :foreign_key => "area_zone__c"
  has_many :shifts, :primary_key => "sfid", :foreign_key => "area_zone__c"
end
