*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         kabum.com.br
${BROWSER}        Firefox
${DELAY}          1
${INVALID USER}     11111111111
${INVALID PASSWORD}    mode
${LOGIN URL}      https://${SERVER}/login
${WELCOME URL}    https://${SERVER}/


*** Keywords ***
Abrir Navegador na Pagina de Login
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Pagina de Login Deve Estar Aberta

Vai Para Pagina de Login
    Go To    ${LOGIN URL}
    Pagina de Login Deve Estar Aberta

Preenche Nome De Usuario
    [Arguments]    ${username}
    Input Text    //input[@id="inputUsuarioLogin"]    ${username}

Preenche Senha
    [Arguments]    ${password}
    Input Text    //input[@id="inputSenhaLogin"]    ${password}

Submete Credenciais
    Click Button    //*[@id="botaoLogin"]

Alerta credenciais invalidas
     Element Text Should Be   //div[@id="inputSenhaLogin"]/div[2]  Dados inválidos, tente novamente!  

Pagina de Login Deve Estar Aberta
    Title Should Be    KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina

Fechar Navegador
    Close Browser