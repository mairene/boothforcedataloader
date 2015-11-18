class Booth < SalesforceModel
  self.table_name =  'salesforce.booth__c'

  belongs_to :area, :primary_key => 'sfid', :foreign_key => 'area_zone__c'
  has_many :assignments, :primary_key => "sfid", :foreign_key => "booth__c"
end
