Feature: Login

Scenario: Successful login

    Variant: Login with username and password
        Given that I visit the [Login Screen]
        When I fill {Username}
            And I fill {Password}
            And I click on {Submit}
        Then I see "You logged into a secure area!"

Table: Users
  | username | password             |
  | tomsmith | SuperSecretPassword! |

UI Element: Username
    - locator is "#username"
    - required
        Otherwise I must see "Your username is invalid!"
    - value comes from "SELECT username FROM [Users]"
        Otherwise I must see " Your username is invalid!"  

UI Element: Password
    - locator is "#password"
    - required
        Otherwise I must see "Your password is invalid!"
    - value comes from "SELECT password FROM [Users] WHERE username = {Username}"
        Otherwise I must see "Your password is invalid!"

UI Element: Submit
    - locator is "Login"
    - type is button

Constants:
    - "Login Screen" is "/login"
