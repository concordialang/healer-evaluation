Feature: Login
    As an user
    I would like to authenticate myself
    In order to access the inventory

Scenario: Login as admin user
    Given an admin user
    When I submit valid credentials at the login page
    Then I see the administration inventory
    
  Variant: Login with admin user
    Given that I visit the [Login Screen]
    When I fill {Username}
        And I fill {Password}
        And I click on {LogIn}
    Then I see "Welcome to OSWA INV."
        And I have a ~admin logged in~

Table: Users
    | username | password |
    | admin    | admin    |

UI Element: Username
    - locator is "[name="user"]"
    - required
        Otherwise I must see "Username can't be blank."
    - value comes from "SELECT username FROM [Users]"
        Otherwise I must see "Sorry Username/Password incorrect."    

UI Element: Password
    - locator is "[name="pass"]"
    - required
        Otherwise I must see "Password can't be blank."
    - value comes from "SELECT password FROM [Users] WHERE username = {Username}"
        Otherwise I must see "Sorry Username/Password incorrect."

UI Element: Login
    - locator is "Login"
    - type is button
  
Constants:
    - "Login Screen" is "/"  