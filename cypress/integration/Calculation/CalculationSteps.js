/// <reference types="cypress" />

import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import CalculatorPage from '../../pages/CalculatorPage'

const calculatorPage = new CalculatorPage()

Given('I have opened the calculator homepage', () => {
  cy.visit('/').title().should('contains', 'Simple Calculator')
})

When('I input {} and {} and choose the {} to perform a calculation', (leftNum, rightNum, operator) => {
  cy.log("Performing calculation: " + leftNum + operator + rightNum)
  calculatorPage.doCalculation(leftNum, rightNum, operator)
})

Then('I should get the expected {}', (result) => {
  calculatorPage.getResult().should('have.value', result)
})