*** Settings ***

Resource           base.robot

Test Setup         Nova Sessão
Test Teardown      Encerra Sessão


*** Test Cases ***
Verifica o valor ao informar o número da linha
    Go To                           ${base_url}/tables
    Table Row Should Contain        id:actors        1        @robertdowneyjr
                

Descobre a linha pelo texto chave e verifica os demais valores
    Go To                 ${base_url}/tables
    ${target}=            Get WebElement        xpath:.//tr[contains(.,'@chadwickboseman')]
    Should Contain        ${target.text}        $ 700.000
    Should Contain        ${target.text}        Pantera Negra
    Log                   ${target.text}
    Log To Console        ${target.text}