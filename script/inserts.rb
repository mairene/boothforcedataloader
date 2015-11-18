# Generate interleaved inserts

1.times do
	@area = Area.create(:name => "Big Co 600")
	Booth.create(:name => 'Dr Rosenpenis', :id => @area.id)
	Shift.create(:name=>'Scott Persinger', :id => @area.id)		
end
