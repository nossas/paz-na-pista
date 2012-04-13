Feature: Subscribe for news
  In order to keep up to date with the project
  As a member
  I want to subscribe for news

  Scenario: when I fill my email correctly
    Given I'm on the homepage
    And I fill "E-mail" with "nicolas@engage.is"
    When I press "Cadastrar E-mail"
    Then I should see "Valeu muleque! Entraremos em contato assim que houverem novidades..."

  Scenario: when I fill my email incorrectly
    Given I'm on the homepage
    And I fill "E-mail" with "nicolasengage.is"
    When I press "Cadastrar E-mail"
    Then I should see "Rapaiz, esse e-mail não está certo não..."

  Scenario: when I leave the email blank
    Given I'm on the homepage
    When I press "Cadastrar E-mail"
    Then I should see "Maluco, sem o seu e-mail vai ficar difícil..."
  
  Scenario: when I fill an existing email
    Given I'm on the homepage
    And there is a subscriber nicolas@engage.com
    And I fill "E-mail" with "nicolas@engage.com"
    When I press "Cadastrar E-mail"
    Then I should see "Aí! Você já está cadastrado, mas não deixe de compartilhar..."
