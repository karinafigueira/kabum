*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         kabum.com.br
${BROWSER}        Firefox
${DELAY}          3
${WELCOME URL}    https://${SERVER}/


*** Keywords ***
Abrir Navegador na Pagina kabum
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Preenche Campo Busca
    [Arguments]    ${BUSCA}
    Input Text    //*[@id="input-busca"]    ${BUSCA}

Clica botao busca
    Click Button    //div[@id='barraBuscaKabum'] //button[@type='submit'] 

Retorno Breadcrumbs busca 
     Element Text Should Be   //div[@id='listingBreadcrumbs'] /div/a[3]  Apple

Fechar Navegador
    Close Browser