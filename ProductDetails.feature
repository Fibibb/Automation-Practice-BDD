Feature: Product details

Validation of operations in the "product details" section 

Scenario: User is able to share the product on social media from product details (Twitter)
Given: User is in the "product details" section   
When: User presses the 'Tweet' button
Then: A window should appear with the option to share the product on Twitter

Scenario: User is able to share the product on social media from product details (Facebook)
Given:  user is in the "product details" section   
When: User presses the "share" button (facebook)
Then: A window should appear with the option to share the product on Facebook

Scenario: User is able to share the product on social media from product details (Google+)
Given: User is in the "product details" section   
When: User presses the 'Google+' button
Then: A window should appear with the option to share the product on Google+

Scenario: User is able to share the product on social media from product details (Pinterest)
Given: User is in the "product details" section   
When: User presses the 'Pinterest' button
Then: A window should appear with the option to share the product on Pinterest

Scenario: User can give feedback in the section "product details" (only required)
Given: User is logged in 
And: User is in the "product details" section 
When: User clicks the "write a review" button
And: User fills in the required fields "Title", "Comment" 
And: User presses the send button
Then: The comment should be added

Scenario: User can give feedback in the section "product details" (optional data)
Given: User is logged in
And: User is in the "product details" section
When: User clicks the "write a review" button
And: User fills in the required fields (Title, Comment) 
And: User selects a rating from the 'quality' field (optional, set to 3 by default) 
And: User presses the 'send' button
Then: The comment should be added


