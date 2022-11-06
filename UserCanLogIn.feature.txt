Feature: Login

Checking the correct operation of the login section

Scenario: The user can log in   
Given: User has an account on the website          
When: User enters the e-mail address and password in the text fields    
And: User presses the "Sign in" button 
Then: User should log in    

Scenario: The user can go to the login section
Given: User  has access to the home page
When: User presses the sign in button
Then User should be redirected to the section "authentication"

Scenario: User can log in with an incorrect password (negative)
Given: User has an account on the website
When: User fills in the fields "email address" and "password" with an incorrect password
Then: User should not be logged in and will be taken to the "my account" page

Scenario: The user can sign out
Given: User is logged in
When: User presses the 'sign out' button
Then: User should be logged out







