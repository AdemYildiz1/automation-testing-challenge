#To Do - Convert following requirement into a testable feature


As an automation tester
I want to fill in and submit the form on the demoqa.com website with the details:
First Name - Jane
Last name - Smith
Email address - automation-test@tester.com
Phone number - 1234567891
So that I can make sure the form is being completed and showing the correct user details


As an automation tester
I want to be able complete the above scenario by passing in an array of user details and submit the form for each of these users
So that I can make this feature run for any amount of user details passed in

  #LOCATORS
  # Forms= //div[@class='card mt-4 top-card'][2]
  # Practice Forms= //span[text()='Practice Form']
#id=firstName
#id=lastName
#id=userEmail
#gender-radio-1
#id= userNumber
#id= submit

#gender is MANDATORY

Feature: Form

  Scenario Outline: Submitting form
    Given The tester on web page of demoqa.com
    And The tester click the "<Modules>"
    And The tester click the Practice Form
    When The tester fills in "<FirstName>", "<LastName> ","<EmailAddress>","<Gender>","<PhoneNumber>"
    And The tester click the submit
    Then The tester should be able to see correct user details

    Examples:
      | Modules | FirstName | LastName | EmailAddress               | Gender | PhoneNumber |
      | forms   | Jane      | Smith    | automation-test@tester.com | Male   | 1234567891  |






