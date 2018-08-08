Feature: Page Opening feature

  Background: Launch Url and Go to library section from dashboard

    Given Go to url
    When user enter username and pasword and click login
    Then for correct credentials it logged IN then hit go to library

  @scenario1
  Scenario Outline: To Test the Author field with multiple inputs and verify the error messages
    When User Open Define Author Page
    And  Enter Input to "<AuthorName>" field
    Then Hit Save and Verify the input

    Examples:
      |AuthorName|
      |Jimme Lannister|
      |Sansa.Stark!12_+|
      |John.Snow@|
      |Zinkin Tayor's|
      |10th KING|