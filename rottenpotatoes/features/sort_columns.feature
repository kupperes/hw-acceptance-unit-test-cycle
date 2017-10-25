Feature:  sort columns
  
  As a movie movie fan
  So that I can arrange my list
  I want to sort and hilite colums
  
Background: movies in database
    
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
  
Scenario: sort title column
  Given I am on the home page
  When I follow "Movie Title"
  Then I should see "Alien" before "Blade Runner"
  
Scenario: sort release date
  Given I am on the home page
  When I follow "Release Date"
  Then I should see "THX-1138" before "Star Wars"
  