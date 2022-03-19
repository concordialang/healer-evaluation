import "login.feature"

Feature: Add Product
    As a admin user
    I would like to add a product

Scenario: Add a product
    Given an admin user
	When I save a new product
	Then I see a success message

    Variant: Add a product
        Given that I have ~admin logged in~
            And I am on the [Add Product Screen]
        When I enter with "Notebook" in {Title}
            And I select "Eletrônicos" in {Categorie}
            And I enter with "50" in {Quantity}
            And I enter with "3000" in {Buying Price}
            And I enter with "4200" in {Selling Price}
            And I click on {Add}
        Then an see "Product added"

UI Element: Title
    - locator is "product-title"
    - required
        Otherwise I must see "Product title can't be blank."

UI Element: Categorie
    - locator is "product-categorie"
    - type is select
    - required
        Otherwise I must see "Product categorie can't be blank."

UI Element: Quantity
    - locator is "product-quantity"
    - required
        Otherwise I must see "Product quantity can't be blank."

UI Element: Buying Price
    - locator is "buying-price"
    - required
        Otherwise I must see "Buying price can't be blank."

UI Element: Selling Price
    - locator is "saleing-price"
    - required
        Otherwise I must see "Saleing price can't be blank."

UI Element: Add
    - locator is "add_product"
    - type is button

UI Element: Alert
    - locator is ".alert"
    - type is div

Constants:
    - "Add Product Screen" is "/add_product.php"  
