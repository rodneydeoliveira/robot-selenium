*** Settings ***
Resource          base.robot

Test Setup        Nova Sessão
Test Teardown     Encerra Sessão


*** Variables ***
${iron-man}        css:input[value="iron-man"]
${cap}             xpath://input[@value="cap"]



*** Test Cases ***
Marcando checkbox com id
    Go To                              ${base_url}/checkboxes
    Select Checkbox                    id:thor
    Checkbox Should Be Selected        id:thor

Marcando checkbox com css
    [Tags]                             ironman
    Go To                              ${base_url}/checkboxes
    Select Checkbox                    ${iron-man}
    Checkbox Should Be Selected        ${iron-man}

Marcando checkbox com Xpath  
    Go To                              ${base_url}/checkboxes
    Select Checkbox                    ${cap}
    Checkbox Should Be Selected        ${cap}
    


