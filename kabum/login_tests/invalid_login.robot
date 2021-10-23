*** Settings ***
Documentation     Teste validando login inválido
Suite Setup       Abrir Navegador na Pagina de Login
Suite Teardown    Fechar Navegador
Test Setup        Vai Para Pagina de Login
Test Template     Login com Credenciais Invalidas Deve Falhar
Resource          resource.robot

*** Test Cases ***               USER NAME            PASSWORD               
Invalid Username And Password    ${INVALID USER}      ${INVALID PASSWORD}           

*** Keywords ***
Login com Credenciais Invalidas Deve Falhar
    [Arguments]    ${username}    ${password}
    Preenche Nome De Usuario   ${username}
    Preenche Senha             ${password}
    Submete Credenciais
    Deve Apresentar Alerta


Deve Apresentar Alerta
    Alerta credenciais invalidas
    

