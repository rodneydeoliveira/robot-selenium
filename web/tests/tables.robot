*** Settings ***

Resource           base.robot

Test Setup         Nova Sessão
Test Teardown      Encerra Sessão


*** Test Cases ***
Verifica o valor ao informar o número da linha
    Go To                           ${base_url}/tables
    Table Row Should Contain        id:actors        1        @robertdowneyjr
                