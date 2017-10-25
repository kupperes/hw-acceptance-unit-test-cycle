

Given /the following movies exist/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

Then /the director of "(.*)" should be "(.*)"/ do |title, director|
    step %Q{I should see "#{title}"}
    step %Q{I should see "#{director}"}
end


When /I (un)?check the following ratings: (.*)/ do |x, rating_list|
    rating_list.split.each do |rating|
        step %Q{I #{x}check ratings_#{rating}}
    end
end

When /I check the following ratings: (.*)/ do |rating_list|
	rating_list.split.each do|rating|
	     step %Q{I check ratings_#{rating}}
	end
end

When /I uncheck the following ratings: (.*)/ do |rating_list|
    rating_list.split.each do|rating|
        step %Q{I uncheck ratings_#{rating}}
    end
end

Then /I should( not)? see the following movies: (.*)/ do |notsee, movies|
    movies.split.each do |title|      
    Step %Q{I should #{x} see #{title}}
    end
end


Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  Hint: page.body is the entire content of the page as a string.

     regexp = /#{e1}.*#{e2}/m
     expect(page.body).to match(regexp) 

end

