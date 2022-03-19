Feature: Upload File

Scenario: Upload image file

    Variant: Upload image file
        Given that I visit the [Upload Screen]
        When I attach the file [Image File] to {File Upload}
            And I click on {Submit}
        Then I see [Image File] in {Files}

UI Element: File Upload
    - locator is "#file-upload"

UI Element: Submit
    - locator is "#file-submit"
    - type is button

UI Element: Files
    - locator is "#uploaded-files"
    - type is div

Constants:
    - "Upload Screen" is "/upload"
    - "Image File" is "user.jpg"
