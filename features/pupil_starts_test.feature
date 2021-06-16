Feature: Pupil Starts Test

  As a Pupil
  I want to start a Test
  So that I can practice mental math

  Scenario: Start Test
    Given the configured Test, "Advanced Indigo", contains the following Questions:
      | 1x8	|
      | 3x1 |
      |	7x8 |
    When I start the Test
    Then I should see "Welcome to one44 - Advanced Indigo"
    And I should be prompted to provide an answer to the first Question, "1x8:"