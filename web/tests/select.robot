*** Settings ***
Resource          base.robot

Test Setup        Nova Sessão
Test Teardown     Encerra Sessão


*** Test Cases ***
Selecionando pelo valor
    Go To        ${base_url}/dropdown
    Select From List By Value        id:dropdown    3

Selecionando pelo texto
    Go To                            ${base_url}/dropdown
    Select From List By Label        class:avenger-list        Natasha Romanoff
