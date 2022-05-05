***Settings***

Documentation                          Aqui teremos as KWs helpers

***Variables***

${START}            Pular
${email}            # email aqui
${senha}            # senha aqui
${numero_cartao}    # número do cartão de crédito aqui
${nome_cartao}      # nome do cartão de crédito aqui
${validade_cartao}  # validade do cartão aqui
${ccv_cartao}       # código cvv do cartão aqui
${CPF}              # CPF aqui
${endereco}         # endereço aqui

***Keywords***

Get Started
    Wait Until Page Contains             ${START}
    Click Text                           ${START}

First login
    Wait Until Page Contains             Sign in
    Input Text                           class=android.widget.EditText             ${email} 
    Click Element                        xpath=//android.view.View[contains(@resource-id, 'identifierNext')]

    Wait Until Page Contains             Welcome
    Click Element                        xpath=//android.view.View[1]/android.view.View[3]/android.view.View[1]
    Input Text                           class=android.widget.EditText              ${senha}
    Click Element                        xpath=//android.view.View[1]/android.view.View[4]

Search Address
    Wait Until Page Contains           ENDEREÇO DE ENTREGA
    Click Element                      id=br.com.brainweb.ifood:id/search_box             
    Input Text                         xpath=//android.widget.LinearLayout[@content-desc="Endereço e número"]/android.widget.EditText        ${endereco}
    Wait Until Page Contains           ${endereco}
    Sleep                              4

    Click Element                      xpath=//android.view.ViewGroup[1]/android.widget.LinearLayout
    Sleep                              2

Filter Delivery Free
    Wait Until Page Contains           Restaurantes
    Click Element                      xpath=//android.widget.TextView[@content-desc="Ordenar por"]
    Sleep                              2
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/title')][contains(@text, 'Taxa de entrega')]
    Sleep                              5

Search Restaurant
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1
    Swipe By Percent                   46.29    70.31    46.29    45.37
    Sleep                              1
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/name')][contains(@text, 'Quentinhas Caseira')]
    Sleep                              2

Add Cart
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text_action')][contains(@text, 'Adicionar')]
    Wait Until Page Contains           SACOLA
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text')][contains(@text, 'Continuar')]
    Sleep                              2
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text')][contains(@text, 'Continuar')]

Credit Card Data
    Wait Until Page Contains           CRÉDITO
    Click Element                      xpath=//android.widget.EditText[contains(@resource-id, 'br.com.brainweb.ifood:id/number_input')][contains(@text, 'Número do cartão')]
    Input Text                         xpath=//android.widget.EditText[contains(@resource-id, 'br.com.brainweb.ifood:id/number_input')][contains(@text, 'Número do cartão')]           ${numero_cartao}
    Input Text                         xpath=//android.widget.EditText[contains(@resource-id, 'br.com.brainweb.ifood:id/expire_date_input')][contains(@text, 'Validade')]              ${validade_cartao}
    Input Text                         xpath=//android.widget.EditText[contains(@resource-id, 'br.com.brainweb.ifood:id/secure_code_input')][contains(@text, 'CVV')]                   ${ccv_cartao}
    Input Text                         xpath=//android.widget.EditText[contains(@resource-id, 'br.com.brainweb.ifood:id/name_input')][contains(@text, 'Nome do titular')]              ${nome_cartao}
    Input Text                         xpath=//android.widget.EditText[contains(@resource-id, 'br.com.brainweb.ifood:id/document_input')][contains(@text, 'CPF/CNPJ do titular')]      ${CPF}
    Swipe By Percent                   46.29    57.29    46.29    14.58
    Click Element                      xpath=//android.widget.TextView[contains(@resource-id, 'br.com.brainweb.ifood:id/text')][contains(@text, 'Salvar')]
    Sleep                              10