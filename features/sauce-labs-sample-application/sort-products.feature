import "login.feature"

Feature: Sort Products
    As an user
    I would like to see products
    In order to sort them

Scenario: Sort by name - A to Z
    Given that I can see the products screen
    When I sort by name
    Then I see products in order from A to Z

    Variant: Sort by name - A to Z
        Given that I have ~logged in~
            And I am on the [Products Screen]
        When I select "Name (A to Z)" in {Sort Select}
        Then I see "Sauce Labs Backpack" in {First Product}

Scenario: Sort by price - low to high
    Given that I can see the products screen
    When I sort by price
    Then I see products in order from low to high prices

    Variant: Sort by price - low to high
        Given that I have ~logged in~
            And I am on the [Products Screen]
        When I select "Price (low to high)" in {Sort Select}
        Then I see "Sauce Labs Onesie" in {First Product}


UI Element: Sort Select  
    - locator is "[data-test=product_sort_container]"
    - type is select

UI Element: First Product
    - locator is "//div[@class=\"inventory_item\"][1]"
    - type is div

Constants:
    - "Products Screen" is "/inventory.html"
