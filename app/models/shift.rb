class Shift < SalesforceModel
  self.table_name =  'salesforce.shift_time__c'
  belongs_to :area, :primary_key => 'sfid', :foreign_key => 'area_zone__c'
  has_many :assignments, :primary_key => "sfid", :foreign_key => 'shift_time__c'
end
