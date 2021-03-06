@managing_taxonomies
Feature: Importing taxonomies from json with the user interface
    In order to have my taxonomies imported from an external source
    As an Administrator
    I want to be able to import data from json file

    Background:
        Given I am logged in as an administrator

    @ui
    Scenario: Importing defined taxonomies
        When I browse taxonomies tree
        And I import taxonomy data from "taxonomies.json" json file
        Then I should see a notification that the import was successful
        And I should see 4 taxonomies in the tree
        And the taxonomy "Taxon 1" should appear in the tree
        And the taxonomy "Taxon 2" should appear in the tree
        And the taxonomy "Taxon 11" should appear in the tree
