*** Settings ***
Documentation     Teste validando busca
Suite Teardown    Fechar Navegador
Test Setup        Abrir Navegador na Pagina kabum
Test Template     Busca por iphone deve retornar produtos Apple
Resource          resource.robot

*** Test Cases ***               PALAVRA                           
Palavra para Pesquisa    IPHONE   


*** Keywords ***
Busca por iphone deve retornar produtos Apple
    [Arguments]    ${BUSCA} 
    Preenche Campo Busca    ${BUSCA} 
    Clica botao busca
    Retorno Breadcrumbs busca 
    

