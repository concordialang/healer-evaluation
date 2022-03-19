Feature: Drag and Drop

Scenario: Drag A and Drop in B

    Variant: Drag A and Drop in B
        Given that I visit the [Drag And Drop Screen]
        When I drag {A} to {B}
        Then I see "A" in {B}

UI Element: A
    - locator is "#column-a"
    - type is div

UI Element: B
    - locator is "#column-b"
    - type is div

Constants:
    - "Drag And Drop Screen" is "/drag_and_drop"
