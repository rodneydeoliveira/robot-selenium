*** Settings ***
Resource           base.robot

Test Setup         Nova Sessão
Test Teardown      Encerra Sessão


*** Test Cases ***
Deve Validar o Título da Página
    Title Should Be        Training Wheels Protocol        
