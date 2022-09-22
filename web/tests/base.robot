*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${base_url}        https://training-wheels-protocol.herokuapp.com/



*** Keywords ***
Nova Sessão
    Open Browser        ${base_url}            chrome

Encerra Sessão
    Capture Page Screenshot
    Close Browser