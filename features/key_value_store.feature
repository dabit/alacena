Feature: Key Value store

  Background:
    Given the alacena server has started

  Scenario: Set and get a value
    Given I send the set URI "http://server:8080/set/some-key?value=1"
    Then the server should respond with "{key: some-key, status: ok}"
    When I send the get URI "/get/some-key"
    Then the server should respond with "{key: some-key, value: 1}"
