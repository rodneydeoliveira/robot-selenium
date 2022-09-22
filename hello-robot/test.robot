*** Settings ***
Library    app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}    Welcome    Rodney
    Log To Console    ${result}
    Should Be Equal    ${result}    Olá Rodney, Bem vindo ao curso de Robot Framework!