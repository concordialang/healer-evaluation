Feature: Context Menu

Scenario: Show context menu

    Variant: Show context menu
        Given that I visit the [Context Menu Screen]
        When I right click {Trigger}
        Then I accept the popup "You selected a context menu"

UI Element: Trigger
    - locator is "#hot-spot"
    - type is div

Constants:
    - "Context Menu Screen" is "/context_menu"
