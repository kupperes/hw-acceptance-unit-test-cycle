Feature:  create movies
  
  As a movie movie fan
  So that I can add to my list
  I want to create new movies
  
Background: movies in database
  
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: create new movie 
  Given I am on the home page
  When I follow "Add new movie"
  Then I fill in "E.T." for "Title"
  And I select "G" from "Rating"
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "E.T. was successfully created."