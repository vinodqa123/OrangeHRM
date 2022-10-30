Feature: LP Core functional Regression test
 #Manual Entry Payment feature
  Scenario Outline: Verify Manual Entry Payment with different type of cards(VISA/MasterCard/Amex/Discover..)
    Given User is already on Home Page
    When  Select payment type as Manual Entry
    When Enter the Patient details as ReferenceNumber: "<ReferenceNumber>", FirstName: "<firstname>", LastName: "<lastname>", Phone/Email :"<phone>", Amount :"<Amount>"
    And Enter Card Details Info Card Number: "<cardNumber>", Address:"<address>", State:"<state>", City"<city>"&Cvv: "<cvv>"
    And Click on Confirm button
    Then Manual Entry Payment should successfull
    
    Examples:
    | ReferenceNumber   | firstname | lastname |phone |Amount |cardNumber |address|state|city|cvv|
    | 187811-23           | John      | smith    |9548406651 |2 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
 
 @sanity        
  Scenario Outline: Verify Partial refund for Manual Entry Transaction
  	Given User is already on Home Page
   	When  Select payment type as Manual Entry
   	When Enter the Patient details as ReferenceNumber: "<ReferenceNumber>", FirstName: "<firstname>", LastName: "<lastname>", Phone/Email :"<phone>", Amount :"<Amount>"
    And Enter Card Details Info Card Number: "<cardNumber>", Address:"<address>", State:"<state>", City"<city>"&Cvv: "<cvv>"
    And Click on Confirm button
   	Then Manual Entry Payment should successfull
   	When Run the Transaction Report
   	When Try to do partial refund
   	Then Partial refund should success
    
    Examples:
    | ReferenceNumber   | firstname | lastname |phone |Amount |cardNumber |address|state|city|cvv|
    | 11332           | John      | smith    |9548406651 |2 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
    
    @sanity
    Scenario Outline: Verify Full refund for Manual Entry Transaction
  	Given User is already on Home Page
   	When  Select payment type as Manual Entry
   	When Enter the Patient details as ReferenceNumber: "<ReferenceNumber>", FirstName: "<firstname>", LastName: "<lastname>", Phone/Email :"<phone>", Amount :"<Amount>"
    And Enter Card Details Info Card Number: "<cardNumber>", Address:"<address>", State:"<state>", City"<city>"&Cvv: "<cvv>"
    And Click on Confirm button
   	Then Manual Entry Payment should successfull
   	When Run the Transaction Report
   	When Try to do full refund
   	Then Full refund should success
    
    Examples:
    | ReferenceNumber   | firstname | lastname |phone |Amount |cardNumber |address|state|city|cvv|
    | 1212           | John      | smith    |9548406651 |2 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
  
      
    Scenario Outline: Verify Refund void for Manual Entry Transaction
  	Given User is already on Home Page
   	When  Select payment type as Manual Entry
   	When Enter the Patient details as ReferenceNumber: "<ReferenceNumber>", FirstName: "<firstname>", LastName: "<lastname>", Phone/Email :"<phone>", Amount :"<Amount>"
    And Enter Card Details Info Card Number: "<cardNumber>", Address:"<address>", State:"<state>", City"<city>"&Cvv: "<cvv>"
    And Click on Confirm button
   	Then Manual Entry Payment should successfull
   	When Run the Transaction Report
   	When Try to do full refund
   	When Try to do Void for refund transaction
   	Then Void refund should success
    
    Examples:
    | ReferenceNumber   | firstname | lastname |phone |Amount |cardNumber |address|state|city|cvv|
    | 89231129           | John      | smith    |9548406651 |2 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
      
    Scenario Outline: Verify Authorize Void for Manual Entry Transaction
  	Given User is already on Home Page
   	When  Select payment type as Manual Entry
  	When Enter the Patient details as ReferenceNumber: "<ReferenceNumber>", FirstName: "<firstname>", LastName: "<lastname>", Phone/Email :"<phone>", Amount :"<Amount>"
    And Enter Card Details Info Card Number: "<cardNumber>", Address:"<address>", State:"<state>", City"<city>"&Cvv: "<cvv>"
    And Click on Confirm button
  	Then Manual Entry Payment should successfull
   	When Run the Transaction Report
   	When Try to do Void for original transaction
   	Then Authorize Void should success
    
    Examples:
    | ReferenceNumber   | firstname | lastname |phone |Amount |cardNumber |address|state|city|cvv|
    | 687778           | John      | smith    |9548406651 |2 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
    
        
   
    