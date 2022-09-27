*** Settings ***
Resource          base.robot

Test Setup        Nova Sessão
Test Teardown     Encerra Sessão


*** Keywords ***
Login with 
    [Arguments]          ${user}                           ${pass}       
    Input Text           id:userId                         ${user}
    Input Password       css:input[name="password"]        ${pass}
    Click Element        css:button[type=submit]


*** Test Cases ***
Deve realizar login com sucesso   
    Go To                   ${base_url}/login
    Login with              stark        jarvis!
    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!
            

Login com dados inválidos
    [tags]                         login_error
    Go To                          ${base_url}/login
    Login with                     stark        abcde

    ${message}=                    Get WebElement                    id:flash
    Should Contain                 ${message.text}                   Senha é invalida!