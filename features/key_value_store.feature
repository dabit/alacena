Feature: Key Value store

  Background:
    Given the alacena server has started

  Scenario: Set and get a value
    Given I make the POST request to URI "/record/" with data "key=some-key&value=1"
    Then the server should respond with "{key: some-key, status: ok}"
    When I make the GET request "/get/some-key"
    Then the server should respond with "{key: some-key, value: 1}"
