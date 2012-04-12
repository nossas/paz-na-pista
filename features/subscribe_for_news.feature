Feature: Subscribe for news
  In order to keep up to date with the project
  As a member
  I want to subscribe for news

  Scenario: when I fill my email correctly
    Given I'm on the homepage
    And I fill "E-mail" with "nicolas@engage.is"
    When I press "Cadastrar E-mail"
    Then I should see "Valeu muleque! Entraremos em contato assim que houverem novidades..."
