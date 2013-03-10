Feature: Merge Articles
  As an Admin
  In order to organize the thoughts of Authors to the world
  I want to merge articles
    
  Scenario: Admin can merge articles
    Given the blog is set up
    Given I am logged into the admin panel
    Given I am on the new article page
    When I fill in "article_title" with "Foobar_merge"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Given I am on the new article page
    When I fill in "article_title" with "Foobar_merge_buddy"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum again"
    And I press "Publish"
    When I follow "Foobar_merge"
    Then I should see "Merge Articles"
    And the form field containing the ID of the article to merge with must have the HTML attribute name set to merge_with
    And if the Articles exists
    But are not the same Articles 
    Then I can merge Articles
  	When articles are merged
  	Then I should see the text and comments from both articles
  	And there should be only 1 author and title
  	But the author and title should be from original articles

  Scenario: non-Admin can not merge articles
    Given I am not logged in as Admin
    Then I can not Edit Articles

