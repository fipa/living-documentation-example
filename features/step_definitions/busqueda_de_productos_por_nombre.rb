When(/^busco por nombre con la palabra (.*)$/i) do |search_string|
	 fill_in 'name', :with => search_string
	 click_button 'search'
end