class CalculatorPage {

    visit(){
        cy.visit('/')
        return this
    }

    doCalculation(leftNum, rightNum, operator){
        cy.get('#leftNumber').clear().type(leftNum)
        cy.get('#rightNumber').clear().type(rightNum)
        cy.get('#operator').select(operator)
        cy.get('iframe').then(($iframe) => {
            const doc = $iframe.contents()
            cy.wrap(doc.find('button#calculate')).click()
        })
    }

    getResult(){
        return cy.get('.result')
    }
}
export default CalculatorPage