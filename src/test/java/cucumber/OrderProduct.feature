#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Purchase the order from Ecommerce website
  I want to use this template for my feature file
  
Background:
Given I landed on Ecommerce page

  @tag1
  Scenario: Positive test of submitting the order
    Given Logged in with username <name> and password <password>
    When I clicked on product cetagory options <headerName> and add the product <productName> to cart
    And Checkout <productName> and submit the order
    Then <message> message is displayed on conformation page


    Examples: 
      | name 						| password |	headerName	| productName  |					message							|
      | admin@gmail.com |  12345 	 | Phones & PDAs|		iPhone 		 | Your order has been placed!	|

