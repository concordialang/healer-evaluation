import "login.feature"

Feature: Checkout
    As an user
    I would like to add product to cart
    In order to checkout

Scenario: Add product to cart
    Given that I can see the product screen
    When I add product to cart
    Then I see 1 product in cart

    Variant: Add product to cart
        Given that I have ~logged in~
            And I am on the [Product Screen]
        When I click on {Add To Cart}
            And I click on {Cart}
        Then I see the url [Cart Screen]
            And I see "1" in {Cart Quantity}
            And I see "Sauce Labs Backpack" in {Cart Item}
            And I have ~product in cart~

Scenario: Checkout product in cart
    Given that I have a product in cart
    When I complete the checkout
    Then I see success order message

    Variant: Checkout product in cart
        Given that I have ~product in cart~
        When I click on {Checkout}
            And I see the url [Checkout Screen]
            And I enter with "Chandler" in {First Name}
            And I enter with "Bing" in {Last Name}
            And I enter with "10016" in {Postal Code}
            And I click on {Continue}
            And I see the url [Overview Screen]
            And I see "Sauce Labs Backpack" in {Cart Item}
        Then I click on {Finish}
            And I see "THANK YOU FOR YOUR ORDER"

UI Element: Add To Cart
    - locator is "[data-test=add-to-cart-sauce-labs-backpack]"
    - type is button

UI Element: Cart
    - locator is ".shopping_cart_link"
    - type is anchor

UI Element: Cart Quantity
    - locator is ".cart_quantity"
    - type is div

UI Element: Cart Item
    - locator is ".inventory_item_name"
    - type is div

UI Element: Checkout
    - locator is "[data-test=checkout]"
    - type is button

UI Element: First Name
    - locator is "[data-test=firstName]"
    - required 
        Otherwise I must see "First Name is required"

UI Element: Last Name
    - locator is "[data-test=lastName]"
    - required 
        Otherwise I must see "Last Name is required"

UI Element: Postal Code
    - locator is "[data-test=postalCode]"
    - required 
        Otherwise I must see "Postal Code is required"

UI Element: Continue
    - locator is "[data-test=continue]"
    - type is button

UI Element: Finish
    - locator is "[data-test=finish]"
    - type is button

Constants:
    - "Product Screen" is "/inventory-item.html?id=4"
    - "Cart Screen" is "/cart.html"
    - "Checkout Screen" is "/checkout-step-one.html"
    - "Overview Screen" is "/checkout-step-two.html"