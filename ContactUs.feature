Feature: Contact Us 

Checking the correct operation of the "Contact Us" section

Scenario: Contact us button (logged in, required fields only)
Given: User is logged in on the website.         
When: User presses the 'contact us' button   
And: The user fills in the required fields (Subject heading, message)
And:The user presses the 'send' button
Then The user should send a message via the "contact us" form   

Scenario: sending messages via the 'contact us' section without filling in the 'message' field while logged in (negative)
Given: User is logged in
When: User fills in the required fields (Subject Heading), the email field is already filled in
And: The user presses the send button without filling in the 'message' field
Then: The user should not send a message

Scenario: Sending messages via the 'contact us' section (not logged in, required fields only)
Given: The user is in the 'contact us' section
And: User is not logged in
When: User fills in all fields (Subject Heading, Email address, Order reference, Attach File, Message)
And: User presses 'send' button
Then: The user should send a message

Scenario: Sending messages via the 'contact us' section (logged in, additional data)
Given: User is not logged in to the website
And: User is on the 'CUSTOMER SERVICE - CONTACT US' page
When: The user fills in the required and optional fields (Subject Heading, Email address, Order reference, attach file, message)
And: User presses send button
Then: The user should send a message

Scenario: Sending messages via the 'contact us' section (not logged in, additional data)
Given: User is not logged into the site
And: User is in the 'Contact us' section.
When: The user fills in the required and optional fields (Subject Heading, Email address, Order reference, attach file, message)
And:	The user presses send button
Then: The user should send a message






