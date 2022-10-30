Feature: Contactless Payment feature
  Scenario Outline: Verify Contacless Payment link sending to patient on Phone number
    Given CA User is already on Home Page
    When CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone>",Amount:"<Amount>"
    And CA Click on Submit button
    Then CA Payment link should sent to patient
            
    Examples:
    | ReferenceNumber   | firstname | lastname |phone |Amount |cardNumber |address|state|city|cvv|
    | 30232-23           | John      | smith    |9548406651 |3 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|

 Scenario Outline: Verify Contacless Payment link sending to patient on Email
    Given CA User is already on Home Page
    When  CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone_Email>",Amount:"<Amount>"
    And CA Click on Submit button
    Then CA Payment link should sent to patient
            
    Examples:
    | ReferenceNumber   | firstname | lastname |phone_Email |Amount |cardNumber |address|state|city|cvv|
    | 34322-23           | John      | smith    |jadhavvinod9096@gmail.com |3 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
 
 Scenario Outline: Verify Contacless Payment Transaction getting approved or not
    Given CA User is already on Home Page
    When  CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone_Email>",Amount:"<Amount>"
    And CA Click on Submit button
    Then CA Payment link should sent to patient
    When CA Open the Paymentlink
   	And CA Enter Card Details Info Card Number: "<cardNumber>"&"<cvv>"
    And CA Click on PayNow button
    Then CA Transaction should success
            
    Examples:
    | ReferenceNumber   | firstname | lastname |phone_Email |Amount |cardNumber |address|state|city|cvv|
    | 5656-23           | John      | smith    |9548406651 |3 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
 
 Scenario Outline: Verify Contacless Payment Transaction with different types of cards(Visa,Amex,Master Card,Discover..)
    Given CA User is already on Home Page
    When  CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone_Email>",Amount:"<Amount>"
   And CA Click on Submit button
    Then CA Payment link should sent to patient
    When CA Open the Paymentlink
  	And CA Enter Card Details Info Card Number: "<cardNumber>"&"<cvv>"
    And CA Click on PayNow button
    Then CA Transaction should success
            
    Examples:
    | ReferenceNumber   | firstname | lastname |phone_Email |Amount |cardNumber |address|state|city|cvv|
    | 34342-23           | John      | smith    |9548406651 |3 |5473500000000014 |Madhapur|Hyderabad|Telangana|123|
    | 12123-23           | John      | smith    |9548406651 |4 |372700699251018 |Madhapur|Hyderabad|Telangana|1234|
    | 23243-23           | John      | smith    |9548406651 |4 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
  @smoke
 Scenario Outline: Verify Refund Transaction for above step Contactless Payment 
  	Given CA User is already on Home Page
    When  CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone_Email>",Amount:"<Amount>"
   	And CA Click on Submit button
    Then CA Payment link should sent to patient
    When CA Open the Paymentlink
  	And CA Enter Card Details Info Card Number: "<cardNumber>"&"<cvv>"
    And CA Click on PayNow button
    Then CA Transaction should success
     When CA ReLaunch Application to do refund/void
    When CA Run the Transaction Report
   	When CA Try to do full refund
   	Then CA Full refund should success
            
    Examples:
   	 | ReferenceNumber   | firstname | lastname |phone_Email |Amount |cardNumber |address|state|city|cvv|
     | 5234656-23           | John      | smith    |9548406651 |3 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
    
 Scenario Outline: Verify Refund Transaction for above step Contactless Payment 
   Given CA User is already on Home Page
    When  CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone_Email>",Amount:"<Amount>"
   	And CA Click on Submit button
    Then CA Payment link should sent to patient
    When CA Open the Paymentlink
  	And CA Enter Card Details Info Card Number: "<cardNumber>"&"<cvv>"
    And CA Click on PayNow button
    Then CA Transaction should success
     When CA ReLaunch Application to do refund/void
    When CA Run the Transaction Report
   	When CA Try to do full refund
   	Then CA Full refund should success
   	When CA Try to do Void for refund transaction
   	Then CA Void refund should success
            
    Examples:
   	 | ReferenceNumber   | firstname | lastname |phone_Email |Amount |cardNumber |address|state|city|cvv|
     | 12123-23          | John      | smith    |9548406651 |3 |5473500000000014 |Madhapur|Hyderabad|Telangana|123|
   
Scenario Outline: Verify Refund Transaction for above step Contactless Payment 
   Given CA User is already on Home Page
    When  CA Select payment type as Contactless
    When CA Enter the Patient details ReferenceNumber:"<ReferenceNumber>",FirstName:"<firstname>",LastName:"<lastname>",Phone/Email:"<phone_Email>",Amount:"<Amount>"
   	And CA Click on Submit button
    Then CA Payment link should sent to patient
    When CA Open the Paymentlink
  	And CA Enter Card Details Info Card Number: "<cardNumber>"&"<cvv>"
    And CA Click on PayNow button
    Then CA Transaction should success
    When CA ReLaunch Application to do refund/void
    When CA Run the Transaction Report
   	When CA Try to do Void for original transaction
   	Then CA Authorize Void should success
            
    Examples:
    | ReferenceNumber   | firstname | lastname |phone_Email |Amount |cardNumber |address|state|city|cvv|
     | 23243-23           | John      | smith    |9548406651 |4 |4012002000060016 |Madhapur|Hyderabad|Telangana|123|
     