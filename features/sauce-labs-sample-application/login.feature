Feature: Login
    As an user
    I would like to authenticate myself
    In order to access the e-commerce

Scenario: Login with standard user
    Given that I can see the login screen
    When I submit valid credentials
    Then I see the e-commerce home
    
  Variant: Login with standard user
    Given that I visit the [Login Screen]
    When I fill {Username}
        And I fill {Password}
        And I click on {LogIn}
    Then I see "PRODUCTS"
        And I have a ~logged in~

Table: Users
    | username      | password     |
    | standard_user | secret_sauce |

UI Element: Username
    - locator is "[data-test=username]"
    - required
        Otherwise I must see "Username is required"
    - value comes from "SELECT username FROM [Users]"
        Otherwise I must see "Username and password do not match any user in this service"    

UI Element: Password
    - locator is "[data-test=password]"
    - required
        Otherwise I must see "Password is required"
    - value comes from "SELECT password FROM [Users] WHERE username = {Username}"
        Otherwise I must see "Username and password do not match any user in this service"

UI Element: Login
    - locator is "[data-test=login-button]"
    - type is button
  
Constants:
    - "Login Screen" is "/"
 