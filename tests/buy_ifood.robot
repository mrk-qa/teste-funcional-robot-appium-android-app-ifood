***Settings***

Resource                               ../resources/base.robot
Library                                AppiumLibrary

***Test Cases***

Abrindo App
    Open Session

Skip Intro
    Get Started

Entrando na tela de login
    Wait Until Page Contains           Continuar com o Google
    Click Element                      id=br.com.brainweb.ifood:id/google_button
    Sleep                              3
   # First login                        => para primeiro acesso com email e senha

Confirmando a conta
    Wait Until Page Contains           Choose an account
    Click Element                      xpath=//android.widget.LinearLayout[1]/android.widget.LinearLayout[1]
    Sleep                              4

Buscando endereço
    Search Address

Confirmando endereço
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text')][contains(@text, 'Confirmar localização')]
    Wait Until Page Contains           Salvar endereço
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/label')][contains(@text, 'Casa')]
    Sleep                              2
    Click Text                         Salvar endereço
    Sleep                              7

Aplicando filtro de busca por taxa de entrega
    Filter Delivery Free

Buscando restaurantes
    Search Restaurant
    
Buscando cardápio
    Wait Until Page Contains           Quentinhas Caseira
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1

Selecionando o prato
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/title')][contains(@text, 'Bife Acebolado')]
    Sleep                              2

Adicionando ao carrinho
    Add Cart

Adicionando uma forma de pagamento
    Wait Until Page Contains           SACOLA
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text')][contains(@text, 'Escolha uma forma de pagamento')]
    Sleep                              2
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text')][contains(@text, 'Adicionar novo cartão')]
    Wait Until Page Contains           Escolha um meio de pagamento
    Sleep                              2
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/title')][contains(@text, 'Crédito')]

Inserindo dados do cartão de crédito
    Credit Card Data

Confirmando pagamento
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/title')][contains(@text, 'Mastercard • Crédito')]
    Sleep                              3

Finalizando o pedido
    Click Element                       xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/action_button')][contains(@text, 'Confirmar e fazer pedido')]
    Sleep                               5