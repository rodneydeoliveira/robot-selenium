*** Settings ***
Resource          base.robot

Test Setup        Nova Sessão
Test Teardown     Encerra Sessão

*** Test Cases ***
Selecionando com ID
    Go To                            ${base_url}/radios
    Select Radio Button              movies    thor
    Radio Button Should Be Set To    movies    thor

Selecionando com Value
    Go To                                ${base_url}/radios
    Select Radio Button                  movies        the-avengers
    Radio Button Should Be Set To        movies        the-avengers