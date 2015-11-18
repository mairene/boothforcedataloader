 class Assignment < SalesforceModel
  self.table_name =  'salesforce.staffing_assignment__c'

  belongs_to :booth, :primary_key => 'sfid', :foreign_key => 'booth__c'
  belongs_to :shift, :primary_key => 'sfid', :foreign_key => 'shift_time__c'

  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
