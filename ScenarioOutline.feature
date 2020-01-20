#scenario outline is used to do same test but with different data
  Feature:
    Scenario Outline: Verify user logs in using username and password
      When user enters  "<email>"
      And user enters "<password>"
      And user clicks on login button
      Then system should should display the dashboard
      #exaple used as data table <params> used as table header i.e email, password
      Examples:
        | email | password |
        |alexx  |1234      |
        |alex@gmail.com|123456|
        |              ||
