import "login.feature"

Feature: Add Category
    As a admin user
    I would like to add a category

Scenario: Add a category
    Given an admin user
	When I save a new category
	Then I see a success message

    Variant: Add a category
        Given that I have ~admin logged in~
            And I am on the [Category Screen]
        When I enter with "Games" in {Name} 
            And I click on {Add}
        Then an see "Successfully Added Categorie"
            And I see "Games" in {List}

UI Element: Name
    - locator is "categorie-name"
    - required
        Otherwise I must see "Categorie name can't be blank."

UI Element: Add
    - locator is "add_cat"
    - type is button

UI Element: List
    - locator is ".table"
    - type is table

Constants:
    - "Category Screen" is "/categorie.php"
