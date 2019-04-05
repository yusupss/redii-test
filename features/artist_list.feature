Feature: ArtistList
  In order to get artists list
  As a visitor who want to get more information from artists list page

  Scenario: Visit ArtistList for the first time at the top
    Given I go to the homepage
    When I am on the homepage
    Then I should see "The Most Popular Artist"

  Scenario: Fill search box with country name
    Given I go to the homepage
    Then I should see "Enter Country Name"
    And I fill in "keyword" with "Australia"
    When I press "Search"
    Then I should see "The Most Popular Artist In JAPAN"


