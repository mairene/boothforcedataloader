# Generate interleaved inserts

1.times do
	@area = Area.create(:name => "Big Co 600")
	Booth.create(:name => 'Dr Rosenpenis', :area_zone__c => @area.id)
	Shift.create(:name=>'Scott Persinger', :area_zone__c => @area.id)		
end
