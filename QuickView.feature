Feature: QuickView

Validation of the Quick View section

Scenario: Using the quick view option on the home page
Given: User is on the homepage        
When: User moves the cursor over the image and presses the 'quick view' button 
Then User should be taken to the product preview  

Scenario: Adding a product to the cart from the 'quick view' preview
Given: User is in the 'quick view' preview
When: User selects values: quantity (default 1), size (default s) and colour.
And: User presses the 'add to cart' button
Then: User should add the product to the cart 
And: User should be redirected to the cart summary page

Scenario: user is able to share the product on social media from quick view (Twitter)
Given: User is in the 'quick view' preview
When: User presses "Tweet" button
Then: A window should appear with the option to share the product on Twitter

Scenario: user is able to share the product on social media from quick view (Facebook)
Given: User is in the 'quick view' preview
When: User presses "Tweet" button
Then: A window should appear with the option to share the product on Facebook

Scenario: user is able to share the product on social media from quick view (Google+)
Given: User is in the 'quick view' preview
When: User presses "Tweet" button
Then: A window should appear with the option to share the product on Google+

Scenario: user is able to share the product on social media from quick view (Pinterest)
Given: User is in the 'quick view' preview
When: User presses "Tweet" button
Then: A window should appear with the option to share the product on Pinterest

Scenario: Adding a product to the wish list from the quick view preview
Given: user is logged in, the user is in quick view
When: user presses the 'add to wishlist' button
Then: The product should be added to the wishlist 
And: Window should appear with the message "product added to wishlist"







