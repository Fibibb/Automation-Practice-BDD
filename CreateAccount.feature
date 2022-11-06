Feature: Create account

Creating a user account

Scenario: Create account with required data
Given: User has an email address
When: User enters his email address
And: User clicks the button "create an account"
And: User fills in the fields with the required personal data (first name, last name, password, home address, postal address, country of residence, state, telephone number)
And: User presses the "register" button
Then: User should create an account

Scenario: Create an account (with optional data)
Given: the user has an email address
When: User enters the e-mail address in the text field.
And: User presses create an account.
And: User fills in the fields with personal information (optional and required).
And: User presses the register button.
Then: User should create an account
