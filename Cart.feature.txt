Feature: Cart

Correct operation of the shopping cart in the application

Scenario: Proceeding to checkout from the shopping basket summary
Given: User is logged in
And: User has added the product to the cart
And: User is at the cart summary level       
When: User presses the 'proceed to checkout' button
Then: User should be taken to the section "Shopping-cart summary"

Scenario: Adding products to cart
Given: User is logged in 
And: User is in product preview
When: User selects values: quantity (default 1), size (default s) and colour.
And: User presses the 'add to cart' button
Then: User should add the product to the cart 
And: User should be redirected to the cart summary page
And: The buttons "continue shopping", "Proceed to checkout" should appear 

Scenario: Proceed to checkout from the shopping cart (not logged)
Given: User is not logged in
And: User has added the product to the shopping cart
And: User is in "SHOPPING-CART SUMMARY", 
And: User is in the 'summary' section
When: User presses the "proceed to checkout" button
Then: User should be redirected to the "log in" section with a request to log in or create an account

Scenario: Proceed to checkout from the shopping cart (logged in, no optional data)
Given: User is logged in
And: User has added the product to the shopping cart
And: User is in "SHOPPING-CART SUMMARY" in the 'summary' section
When: User presses the "proceed to checkout" button
And: User presses the "proceed to checkout" button
And: User selects a delivery option, indicates agreement to the terms of service (required) 
And: User presses the "proceed to checkout" button
And: User selects a payment method 
And: User presses the "I confirm my order" button
Then: Order should be placed

Scenario: Proceed to checkout from the shopping cart ( logged in, optional data)
Given: User is logged in
And: User has added the product to the shopping cart
And: User is in "SHOPPING-CART SUMMARY" in the 'summary' section
When: User presses the "proceed to checkout" button
And: User fills in the comment field (optional) 
And: User presses the "proceed to checkout" button
And: User selects the delivery method 
And: User agrees to the terms of service (required) 
And: User presses the "proceed to checkout" button
And: User selects a payment method 
And: User presses the "I confirm my order" button
Then: Order should be placed

Scenario: Removing products from the shopping cart (logged in)
Given: User is logged in
And: User added the product to the basket
And: User is in the "Shopping cart summary" section
When: User presses the button with the bin icon
Then: Products should be removed from the basket
