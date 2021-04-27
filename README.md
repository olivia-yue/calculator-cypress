# calculator-cypress

This project is aimed to perform the UI automation for the [Calculator](https://calculator-web.azurewebsites.net/). The framework is build using Cypress with Cucumber/gherkin-syntaxed specs.

Currently, there is only 1 feature file:

* Calculation.feature: covering 4 operations(Addition, Subtraction, Multiplication & Division)

## Prerequisites
* Node.js 12 or 14 and above

## Running Tests
1. Download the code from github: 
  ```bash
  git clone --depth 1 "https://github.com/olivia-yue/calculator-cypress.git"
  `````
2. Navigate to "calculator-cypress": 
  ```bash
  cd calculator-cypress
  ```
3. Install Cypress and other dependencies:
  ```bash
  npm install
  ```
4. Run tests:
  ```bash
  npm run test
  ``` 
5. Generate mochawesome html report:
  ```bash
  npm run report
  ```
  Then the report can be found at: `mochawesome-report/`

## CI Integration  
For this project, using Github Actions -- Workflows as the CI pipelines. 
* The workflow files can be found under: `.github/workflows/`