Feature: Frames

Scenario: Show frames

    Variant: Show frames
        Given that I visit the [Frames Screen]
        When I switch to the iframe {Top Frame}
            And I switch to the iframe {Middle Frame}
        Then I see "MIDDLE"

UI Element: Top Frame
    - locator is "[name=frame-top]"
    - type is frame

UI Element: Middle Frame
    - locator is "[name=frame-middle]"
    - type is frame

Constants:
    - "Frames Screen" is "/nested_frames"
