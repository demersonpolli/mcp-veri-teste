> **Demo run** — submitted at `20260401-142803 UTC`


# SR-060 | Emitir Duplicata Escritural – por comando do  Sacador (Upload de arquivo e preenchimento manual) - inclui "Gestão de  Vínculos do Sacado (Sacador x Sacado)"

 

## 1 Descrição

Como Sacador desejo emitir uma Duplicata Escritural através da interface web SPC Grafeno podendo ser por:  

Preenchimento manual, em tela, dos campos obrigatórios de uma Duplicata  Escritural; ou

Upload de um arquivo .CSV padronizado com os dados de uma ou mais  Duplicatas.  
Para formalizar uma transação mercantil, cujo pagamento é definido “a prazo” com  uma fatura relativa à venda efetiva de bens e/ou prestação de serviços. 
 
## 2 Descrição das Funcionalidades / Regras de Negócio 

### 2.1 Preenchimento manual, em tela, dos campos obrigatórios de uma  Duplicata Escritural 

O que faz? O Sacador preenche manualmente os campos com as informações da  Duplicata Escritural a ser emitida.  

Após o preenchimento dos campos, o Sistema de Escrituração deve  apresentar tela resumo com todos os dados para visualização e validação  do Sacador.

Na tela resumo devem ser incluídas as informações não preenchidas pelo  Sacador, mas que fazem parte da Duplicata e constam na base de dados  SPC Grafeno, tais quais:

* Data da Emissão (corresponde à data da emissão/escrituração); o Identificação do Sacador (CPF/CNPJ);
* Endereço do Sacador (Logradouro, Número, Complemento, Bairro,  CEP, UF, Município);
* Tipo de assinatura (Sacador) (preencher com “Tácita”);
* Com o aceite do Sacador na tela resumo, o sistema de Escrituração deverá  validar os dados, e:

    * Se OK:

        * Emitir/escriturar a Duplicata e atribuir o IUD (Identificador  Único da Duplicata);
        * Associar a IUD a uma UD;
        * UD (Unidade de Duplicata) = mesmo Sacador, Sacado  e Data de Vencimento da Duplicata.
    
          Verificar se Sacado já existe na base SPC Grafeno. Caso não  exista, incluir na Base SPC Grafeno “Cadastro de Sacado” e na  Base de Controle da PLAT (através da mensagem da PLAT  ctrl.007), informando a situação do Sacado (“Duplicatas não  liquidadas”). Caso exista e sua situação seja “Duplicatas  liquidadas” ou “Não há Duplicatas para Sacado”, alterar para  “Duplicatas não liquidadas” na Base SPC Grafeno e na Base  de Controle da PLAT (através da mensagem ctrl.011).
		
		* SLA: A inclusão do vínculo com o Sacado na Base de  Controle da PLAT deve ser realizada em até 10 minutos  da emissão da primeira Duplicata contra o Sacado.
		* O status da Duplicata no sistema deve ser:
			* “Livre” (LIVR), se não houver um contrato de extensão  automática (conforme definições da história AF-070 |  AF-075); ou
			* “Comprometida” (BLOQ), se a UD já estiver negociada  ou houver um contrato de extensão automática  (conforme definições da história AF-070 | AF-075);
		* Os mesmos Efeitos de Negociação deverão ser aplicados à Duplicata recém-emitida.
		* O Sistema de Registro SPC Grafeno deve enviar notificação para o Agente Financiador caso esteja na borda SPC Grafeno ou via PLAT (mensagem ntfc.001) para o Sistema de  Registro do titular ou beneficiário da Duplicata (conforme definições da história Notificar Registradora do Titular ou Beneficiário da DE.
		* O Sistema de Registro SPC Grafeno deve enviar notificação de efeito de negociação para o Sacado, conforme dados de contatos cadastrados no Sistema SPC Grafeno (conforme definições da história SO-025-Notificação ao Sacado).
		* O Sistema de Escrituração deve notificar o Sacado sobre a  emissão da Duplicata dentro do SLA previsto de até 5 minutos (conforme definições da história SO-025-Notificação ao Sacado).
	* Se NÃO OK:
		* Apresentar em tela as consistências realizadas para correção  ou adequação pelo Sacador;
		* O status da Duplicata no sistema deve ser “Pendente”.
		* A Duplicata deve ser exibida na tela de consulta de Duplicatas para  visualização pelo Sacador. 
		* O Sistema de Escrituração deve notificar o Sacado sobre a emissão da Duplicata em até 5 minutos (SLA).
		* O sistema de Escrituração deve manter no histórico da Duplicata a data,  hora (timestamp) que identifique a escrituração (momento da emissão)  como evidência do processo e permitir a sua consulta. Exemplo: “[dd/mm/aaaa - hh:mm] Duplicata Emitida por (nome do usuário) com  sucesso. (IUD: (número da IUD)).”
		* No mesmo dia em que a Duplicata foi emitida/escriturada o sistema de  Escrituração deve enviar para registro no Sistema de Registro SPC Grafeno,  e manter no histórico da Duplicata a data, hora (timestamp) que identifique  o registro (momento do registro) como evidência do processo e permitir a  sua consulta. Exemplo: “[dd/mm/aaaa - hh:mm] Duplicata Registrada por SPC Grafeno com  sucesso.”
		* Serão conciliadas pelo Sacador (conforme definições da história SR-155 – Conciliação de Sacador) entre outras informações, as seguintes relacionadas à emissão de Duplicatas:
			* As Duplicatas Escriturais emitidas com as constantes nos sistemas  de controle de operações mercantis dos Sacadores;
			* Os documentos fiscais correspondentes às Duplicatas  Escriturais emitidas e que a elas estejam associadas;
			* Os instrumentos de pagamento correspondentes às Duplicatas  Escriturais emitidas e que a elas estejam associados. 

Restrições/Situações Especiais:  

* Se Sacador tiver alguma restrição no Sistema de Escrituração SPC Grafeno  (status “Restrito”), não pode emitir Duplicata (conforme história SR-999 - Incluir ou atualizar vínculo com o Sacador na Base de Controle).
* Caso seja emitida uma Duplicata para um Sacador que esteja com status  “Inativo” (Base SPC Grafeno e Base de Controle da PLAT), o Sistema de  Escrituração deve atualizar o status na Base SPC Grafeno e comandar uma  atualização de status para “Ativo” através da mensagem ctrl.005.
* Todos os dados obrigatórios devem ser preenchidos para que a emissão da  Duplicata ocorra.
* A IUD apenas pode ser gerada se todos os obrigatórios forem informados e  válidos.
* A Duplicata deve ser única e o sistema de Escrituração deverá validar sua unicidade, conforme:
	* Sacador (CPF/CNPJ);
	* Sacado (CPF/CNPJ);
	* Número da Duplicata (número da fatura + sequencial da parcela (3)); o Valor da Duplicata;
	* Data de Vencimento da Duplicata;
* O Sacado deve ser notificado em até 5 minutos (SLA) da emissão da  Duplicata.
* Os dados do Sacado, quando informados na emissão da Duplicata, devem  ser automaticamente cadastrados na base SPC Grafeno de “Cadastro de  Sacado”. Os dados a serem armazenados são:
	* Nome Completo/Razão Social;
	* CPF/CNPJ;
	* Logradouro;
	* Número;
	* Complemento;
	* Bairro/Distrito;
	* Município;
	* CEP;
	* UF;
	* Telefone;
	* E-mail.
* Os dados do Sacado, quando não informados pelo Sacador na emissão,  podem ser obtidos pelo Sistema de Escrituração na base de “Cadastro de  Sacado”, quando existentes;
* Importante: Para o MVP, os dados do Sacado serão únicos na base  SPC Grafeno e reutilizáveis pelos Sacadores para suas emissões,  quando necessário. Podendo ser atualizados, quando um dado novo  e diferente for informado.
* A Duplicata, após emitida/escriturada, não deve ter os dados do Sacado alterados, caso estes dados sejam posteriormente atualizados na base de  “Cadastro de Sacado”.
* Os dados de Documento Fiscal, quando informados no momento da  emissão/escrituração da Duplicata, devem ser validados conforme regras  contidas na história “SR-080/SR-100/SR-110 - Atualizar Informações de Duplicata Escritural (pelo Sacador) -> item 2.2”, e considerar para a  emissão que:
	* O documento fiscal associado no momento da emissão da Duplicata deve possuir data de vencimento e valor de parcela da Duplicata. ✓ Os dados de Avalista, quando informados no momento da  emissão/escrituração da Duplicata, devem observar:
		* Se Avalista for igual ao Sacador, o sistema deve indicar na tela  resumo que o tipo de assinatura é “Tácita” e permitir a  emissão/escrituração da Duplicata, caso as demais validações  estiverem OK;
		* Se Avalista for diferente do Sacador, o sistema deve disponibilizar  mecanismo para assinatura eletrônica (a ser definido pelo time de  desenvolvimento) do Avalista. Neste caso, a Duplicata deve  permanecer com status “Pendente” até que a assinatura seja  realizada e a partir disto a Duplicata possa ser emitida.
	* As validações dos dados da(s) Duplicata(s) devem ser as mesmas para as  APIs interna e externa de emissão de Duplicatas.

### 2.2) Upload de um arquivo .CSV padronizado com os dados de uma ou mais  Duplicatas

O que faz? O Sacador realiza o upload de um arquivo .CSV, através de interface web do Sistema de Escrituração, com as informações de uma ou mais Duplicatas para  emissão.

O arquivo .CSV deve ser padronizado e permitir informar os dados para a  emissão da Duplicata.

O Sistema de Escrituração deve apresentar tela (ver protótipo Jornada  Sacador, menu “Gestão de Remessas”) para visualização do processamento  do arquivo .CSV, contendo:

* Data/hora do Upload;
* Usuário responsável pelo upload;
* Quantidade de Duplicatas (Total);
* Quantidade de Duplicatas (Emitidas);
* Quantidade de Duplicatas (Pendentes);
* Status do processamento do arquivo (a iniciar, em andamento,  processado e erro);
* Motivos de Falhas (quando houver erro no processamento de alguma  Duplicata);

A Duplicata deve ser exibida individualmente na tela de consulta de  Duplicatas para visualização pelo Sacador.

As Duplicatas que não tiverem seus dados válidos devem ser apresentadas  com o status “Pendente” para atualização posterior do Sacador.

A emissão/escrituração de Duplicatas a partir de upload de arquivo .CSV  deve atender às mesmas regras e validações definidas no item 2.1 deste  documento.

Restrições:

* O arquivo para upload deve ser no formato .CSV com padrão de colunas  definido pelo Sistema de Escrituração.
* O Sistema deve suportar upload de arquivo conforme tamanho definido pelo  time técnico.
* O processamento do arquivo deve ser assíncrono e seu progresso  apresentado em tela para acompanhamento do Sacador.
* Duplicatas com erro/inconsistência no CSV não devem bloquear o  processamento das demais.
* Todas as ações (upload, erros, emissões) devem ser logadas pelo Sistema.

## 3) Lista de campos para emissão a serem informados:

 | Campo | Fomato/Tamanho | Requisito na  Emissão | Validação |
 |-------|----------------|-----------------------|-----------|
 | Identificador da Duplicata Escritural pelo Sacador | Identificador da Duplicata | 45 posições (alfa) | Opcional |
 | Identificação da Duplicata Escritural que consta dos  controles do Sacador - Partes: ||||
 | 2.1. Sacado ||||
 | Identificação | Alfa (11 ou 14) | Obrigatório | A identificação do Sacado do documento fiscal (CPF ou CNPJ) |
 | Nome/Razão Social | Alfa (100) | Obrigatório | Nome ou Razão Social do Sacado. |
 | E-mail do Sacado | E-mail (100) | Obrigatório | E-mail para envio de mensagens ao Sacado. |
 | Telefone móvel | Numérico (11) | Opcional | Número de telefone para contato com o Sacado. |
 | Responsável pela  confirmação ou manifestação | Alfa (100) | Opcional | O preenchimento deste campo deve ser obrigatório  quando Sacado for CNPJ. |
 | 2.1.1 Endereço do Sacado ||||
 | Logradouro | Alfa (60) | Obrigatório | Logradouro do endereço do Sacado. |
 | Número | Alfa (20) | Obrigatório | Número do endereço do Sacado. |
 | Complemento | Alfa (100) | Opcional | Complemento do endereço do Sacado. |
 | Bairro | Alfa (100) | Obrigatório | Bairro do endereço do Sacado. |
 | CEP | Numérico (8) | Obrigatório | CEP do endereço do Sacado. |
 | UF | Alfa (2) | Obrigatório | UF do endereço do Sacado. |
 | Município | Alfa (100) | Obrigatório | Município do endereço do Sacado. |
 | 2.1.2. Praça de Pagamento do Sacado ||||
 | Estado | Alfa (2) | Obrigatório | Indicação do Estado como Praça de Pagamento da Duplicata Escritural. |
 | Município | Alfa (100) | Obrigatório | Indicação do Município como Praça de Pagamento da Duplicata Escritural. |
 | Lista de Informações relacionados à Fatura ||||
 | Fatura | Alfa (60) | Obrigatório | Número da fatura atrelada à Duplicata Escritural NF-e e CT-e: Número da Nota + Número da Duplicata NFS-e SP: Número da Nota |
 | Valor Total da Fatura | Numérico (14, 2) | Obrigatório | Valor total da correspondente fatura, contrato ou documento fiscal, mesmo que existam descontos concedidos pelo Sacador no valor a ser efetivamente pago pelo Sacado |
 | Valor do desconto | Numérico (14, 2) | Opcional | Valor de desconto concedido no momento de emissão, em reais referente ao desconto aplicado ao valor total  da fatura | Lista de Informações relacionados à Duplicata |
 | Tipo da Duplicata | Alfa (2) | Obrigatório | Tipo de operação correspondente à entrada: DM = Duplicata Mercantil  DS = Duplicata de Serviços |
 | Número da Parcela | Alfa (3) | Obrigatório | Número da parcela da Duplicata Escritural. |
 | Data de vencimento | Data (AAAA-MM-DD) | Obrigatório | Data de vencimento da Duplicata Escritural deve ser maior que a sua data de emissão (se não informada, a  Duplicata não será emitida até ocorrer a atualização da  data de vencimento) |
 | Valor da Duplicata | Numérico (14,2) | Obrigatório | Valor total da Duplicata Escritural deve sempre apresentar o valor total da sua correspondente parcela  a ser efetivamente paga pelo Sacado. |
 | 4.1 Abatimento (opcional)  ||||
 | Valor Desconto | Valor | Opcional | Valor de desconto concedido no momento de emissão, em porcentagem do valor a pagar |
 | Motivo do  Abatimento | Alfa (1) | Opcional | P = Desconto por pontualidade no pagamento; N = Desconto negociado independente da data de  pagamento |
 | 4.2. Atraso (opcional)  ||||
 | Juros de mora | Numérico (14,2) | Opcional | Valor ao dia dos juros por pagamento em atraso. |
 | Multa | Numérico (14,2) | Opcional | Valor da multa por pagamento em atraso. |
 | Cláusula Penal | Alfa (255) | Opcional | Em caso de atraso, como se corrige o valor da operação de crédito? Se não tiver: “Nada consta” |
 | Encargos moratórios  | Decimal (4,4) | Opcional | Encargos moratórios. |
 | 4.3. Juros (opcional)  ||||
 | Percentual | Decimal (4,4) | Opcional | Taxa anualizada em percentual. Admite-se 0,00. |
 | Indexador | Alfa (1) | Opcional | Informar o indexador da operação. 1 = Taxa Prefixada; 2 = Taxa Selic; 3 = Taxa DI; 4 = IPCA; 5 = IGPM; 6 = Moeda Dólar; 7 = Moeda  Euro; e 8 = Outros. |
 | 4.4. Informações Complementares (opcional) ||||
 | Descrição | Alfa (255) | Opcional | Cláusulas contratuais e outras informações importantes da operação. |
 | Outros Encargos | Alfa (255) | Opcional | Demais comissões e encargos | Documentos Fiscais (opcional, porém obrigatório se preenchido qualquer item do bloco) |
 | Tipo de documento  fiscal | Alfa (4) | Opcional | Cupom Fiscal Eletrônico (SAT CF-e); Nota Fiscal de Consumidor eletrônica (NFC-e); Nota Fiscal eletrônica (NF-e) - MERCANTIL; Nota Fiscal de Serviços eletrônica (NFS-e); Conhecimento de Transporte eletrônico (CT-e) - MERCANTIL; Manifesto Eletrônico de Documentos Fiscais (MDF e); Recibo de Pagamento Autônomo (RPA) |
 | Chave de acesso | Alfa (44) | Opcional | Chave de Consulta do Documento Fiscal atrelado à Duplicata |
 | Número do  documento | Alfa (10) | Opcional | Número do documento fiscal associado à Duplicata Escritural. |
 | Série do documento | Numérico (3) | Opcional | Série do documento fiscal associado à Duplicata Escritural. |
 | Avalista ||||
 | 6.1. Identificação do Avalista (opcional, porém obrigatório se preenchido Avalista) ||||
 | Identificação | Alfa (11 ou 14) | Opcional | Documento do avalista (CPF ou CNPJ). | 
 | Nome | Alfa (100) | Opcional | Nome do avalista. |
 | Estado civil | Alfa (1) | Obrigatório, se  informado avalista pessoa física | 1 = Solteiro; 2 = Casado ou em União Estável, com comunhão universal; 3 = Casado ou em União Estável com comunhão parcial; 4 = Casado ou em União Estável com separação total; 5 = Casado ou em União Estável com separação obrigatória; 6 = Viúvo; 7 = Divorciado; 8 = Participação final nos aquestos |
 | E-mail do Avalista | E-mail (100) | Opcional | E-mail para envio de mensagens ao Avalista. |
 | 6.2. Cônjuge (opcional, porém obrigatório se estado civil igual a 2, 3, 4 ou 5) ||||
 | Nome | Alfa (255) | Opcional | Nome do cônjuge do avalista. |
 | CPF | Alfa (11) | Opcional | CPF do cônjuge do avalista. |
 | 6.3. Endereço do Avalista (opcional, porém obrigatório se preenchido Avalista) ||||
 | Logradouro | Alfa (60) | Opcional | Logradouro do endereço do avalista. |
 | Número | Alfa (20) | Opcional | Número do endereço do avalista. |
 | Complemento | Alfa (100) | Opcional | Complemento do endereço do avalista. |
 | Bairro | Alfa (100) | Opcional | Bairro do Avalista. |
 | CEP | Numérico (8) | Opcional | CEP do endereço do avalista. | 
 | UF | Alfa (2) | Opcional | UF do endereço do avalista. |
 | Município | Alfa (100) | Opcional | Município do endereço do avalista. |
 | 6.4 Assinatura do Avalista (opcional) ||||
 | Tipo de assinatura | Alfa (4) | Opcional | Preencher com “Tácita” (se Avalista = Sacador) |
 | Conteúdo da  assinatura | Alfa (100) | Opcional | Assinatura do Avalista (preencher apenas quando  Avalista for diferente de Sacador).
 | Informações de Pagamento |
 | 7.1. Domicílio de Pagamento ||||
 | Tipo de informação  de domicílio | Alfa (2) | Obrigatório | Tipo de informação de domicílio onde o pagamento será liquidado: conta corrente; conta de pagamento;  boleto ou PIX ou PIX copia e cola |
 | 7.1.1. Conta (obrigatório caso tipo Conta Corrente ou Conta de Pagamento) ||||
 | COMPE da  Instituição de  Domícilio para  cobrança | Alfa (3) | Opcional | Código COMPE da Instituição de Domicílio.  Complementar com 0 à esquerda. Utilizar tabela BCB para seleção pelo usuário (incluir  referência no anexo). |
 | Agência domicílio para cobrança | Alfa (4) | Opcional | Agência domicílio para liquidação da Duplicata  Escritural. |
 | Conta corrente ou de pagamento | Alfa (20) | Opcional | Conta de domicílio para liquidação da Duplicata  Escritural. |
 | Dígito da conta | Alfa (2) | Opcional | Dígito verificador da conta |
 | 7.1.2. Pix (obrigatório caso tipo PIX) ||||
 | Tipo de chave PIX | Alfa (3 ou 4) | Opcional | Tipos de chave PIX, podendo ser: CPF, CNPJ, celular, e-mail ou chave aleatória |
 | 7.2. Instrumento ||||
 | 7.2.1. Instrumento de Pagamento ||||
 | Tipo de  Instrumento | Alfa (4) | Obrigatório | Tipo de operação correspondente à entrada, sendo: Boleto, Transferência Bancária, PIX ou PIX  Copia e Cola |
 | 7.2.1.1 Boleto (obrigatório caso instrumento de pagamento boleto)
 | Linha Digitável do Boleto | Alfa (48) | Opcional | Código de Barras do Boleto para Liquidação da Duplicata Escritural, quando aplicável.|
 | Tipo de boleto | Alfa (2) | Opcional | Boleto simples ou boleto dinâmico |
 | ID do boleto | Alfa (48) | Opcional | IDDA |
 | 7.2.1.2 Transferência Bancária / Conta (obrigatório caso instrumento de pagamento transferência  bancária/conta) ||||
 | Titular domicílio | Alfa (11 ou 14) | Opcional | Identificação do titular da conta domicílio. |
 | Tipo de conta | Alfa (2) | Opcional | Tipo de conta onde o pagamento será liquidado: conta corrente ou conta de pagamento |
 | COMPE da Instituição de Domicílio | Alfa (3) | Opcional | Código COMPE da Instituição de Domicílio para cobrança. Utilizar tabela BCB para seleção pelo usuário (incluir  referência no anexo). |
 | Agência domicílio | Alfa (4) | Opcional | Agência domicílio para liquidação da Duplicata Escritural. |
 | Conta domicílio | Alfa (20) | Opcional | Conta de domicílio para liquidação da Duplicata Escritural. |
 | Dígito da conta | Alfa (2) | Opcional | Dígito verificador da conta. |
 | 7.2.1.3. Transferência Bancária / Pix (obrigatório caso instrumento de pagamento transferência bancária/Pix) ||||
 | Tipo de chave PIX  | Alfa (3 ou 4)  | Opcional  | Tipos de chave PIX, podendo ser:CPF, CNPJ, celular, e-mail ou chave aleatória |
 | Chave PIX  | Alfa (50)  | Opcional  | Valor da chave PIX escolhida em "Tipo de chave PIX".  | 7.2.1.4. Pix Copia e Cola (obrigatório caso instrumento de pagamento transferência bancária/Pix Copia e  Cola) |
 | PIX Copia e Cola  | Alfa (32)  | Opcional  | Chave de pagamento de uso único, devendo incluir em seu conteúdo informacional o número da Duplicata  Escritural. |

**Personas**

* Sacador (ex.: Fábrica de Farinha) – Preenche os campos da Duplicata  Escritural e comanda a emissão.
* Escrituradora SPC Grafeno - Executa a ação no sistema de Escrituração SPC  Grafeno.
* Registradora SPC Grafeno – Registra a Duplicata no sistema de Registro SPC  Grafeno. 

**Critérios de Aceite (DoD)**

Funcionais:
* Validação de Sacador (ativo, sem restrições).
* Campos obrigatórios preenchidos.
* Tela de resumo com revisão do Sacador, quando preenchida manualmente.
* Geração de IUD e vinculação a UD.
* Status correto da Duplicata (LIVR/BLOQ/Pendente).
* Tratamento automático do Sacado (cadastro/atualização na base de  Cadastro de Sacado SPC Grafeno e Base de Controle da PLAT), respeitando os SLAs previstos.
* Unicidade da Duplicata garantida.
* Registro de histórico com timestamps e hashes.
* Arquivo CSV é o único formato aceito.
* Processamento do arquivo CSV disponível para consulta.
* O sistema deve validar se o arquivo CSV contém dados de ao menos  Duplicata para que possa ser realizado processamento.
* Quando houver upload de arquivo CSV, os campos obrigatórios das  Duplicatas devem estar preenchidos e caso não estejam, a Duplicata  deve constar com status “Pendente” no Sistema para atualização  manual do Sacador.
* Quando houver upload de arquivo CSV, o Sistema deve aplicar as mesmas  validações da emissão individual (item 2.1).
* Quando upload de arquivo CSV, erros/inconsistências devem ser  detalhados por linha/registro do CSV, onde o usuário deve poder  baixar um log de erros após o processamento.
* A estrutura dos dados deve seguir o dicionário de dados da PLAT (Catálogo). 

**Casos de Testes Básicos**

| Cenário | Informação de Entrada | Resultado Esperado |
|---------|-----------------------|--------------------|
| Preenchimento válido – Todos os campos obrigatórios corretos ||
| Sacador preenche os dados da duplicata | Sistema exibe tela resumo com  dados preenchidos + dados complementares (ex.: data de emissão, endereço do Sacador). | Campos obrigatórios  faltantes – Sacador não  preenche "Data de Vencimento da Duplicata" |
| Campos obrigatórios incompletos (ex.: data de vencimento da Duplicata em branco) | Sistema não avança para a tela  resumo, exibe mensagem: "Preencha todos os  campos obrigatórios." e duplicata  é salva com status “Pendente” | Sacador com status 'Restrito' |
| Sacador logado tem status  "Restrito" no SPC Grafeno | Sistema bloqueia emissão, exibe  mensagem: "Sacador restrito. Emissão não permitida." | Sacador inativo na base SPC Grafeno |
| CNPJ/CPF do Sacador existe  na base SPC Grafeno mas  está "Inativo" | Sistema permite emissão e atualiza  status do Sacador para 'Ativo' na  Base SPC Grafeno e na Base de Controle da PLAT (via mensagem ctrl.005). | Cadastro de Sacado  inexistente na base SPC Grafeno |
| Sacador informa dados de um  Sacado com CNPJ/CPF que  não consta na base SPC Grafeno | 1. Sistema deve incluir novo  registro na base "Cadastro de  Sacado" do SPC Grafeno; 2. Enviar mensagem ctrl.007 para  PLAT com situação "Duplicatas  não liquidadas"; 3. Registrar ação no histórico da  Duplicata | Sacado existente com  situação 'Duplicatas  liquidadas' |
| Sacador informa CNPJ/CPF  de Sacado que existe na base  SPC Grafeno com situação  "Duplicatas liquidadas" | 1. Sistema deve atualizar situação  para "Duplicatas não liquidadas" na base SPC Grafeno; 2. Enviar mensagem ctrl.011 para  PLAT; 3. Registrar ação no histórico da  Duplicata | Sacado existente com  situação 'Não há Duplicatas' |
| Sacador informa CNPJ/CPF  de Sacado que existe na base  SPC Grafeno com situação "Não há Duplicatas para  Sacado" | Sistema deve atualizar situação  para "Duplicatas não liquidadas"  na base SPC Grafeno | Enviar mensagem ctrl.011 para  PLAT |
| Registrar ação no histórico da  Duplicata | Sacado existente com  situação 'Duplicatas  não liquidadas' | Sacador informa CNPJ/CPF  de Sacado que já consta na  base SPC Grafeno com situação "Duplicatas não  liquidadas" |
| Sistema mantém situação  existente | Não envia mensagem para  PLAT | Registra consulta no histórico  da Duplicata |
| Sacado novo (não cadastrado) | CNPJ/CPF do Sacado não  existe no SPC Grafeno | Sistema cadastra Sacado automaticamente na base SPC  Grafeno e na PLAT (via mensagem ctrl.007). |
| Duplicata duplicada | Mesmo Sacador + Sacado +  Número + Valor + Data de  vencimento já existente | Sistema rejeita emissão, exibe  mensagem: "Duplicata já existente." |
| Avalista = Sacador | Tipo de assinatura marcado  como "Tácita" (Avalista é o  próprio Sacador) | Sistema permite emissão imediata após validação. |
| Avalista ≠ Sacador | Avalista diferente do Sacador  (requer assinatura conforme  padrão definido pelo time  técnico) | Sistema marca Duplicata como  'Pendente' até assinatura do Avalista. |
| Dados do Sacado complementados pelo  sistema | Sacador não preenche endereço do Sacado (já existe  na base SPC Grafeno) | Sistema completa automaticamente os dados do Sacado na tela de resumo. |
| Registro no Sistema de  Registro SPC Grafeno | Duplicata emitida com sucesso | Sistema envia dados para registro no SPC Grafeno e gera log: "[dd/mm/aaaa - hh:mm] Duplicata Registrada com sucesso." |
| Documento fiscal inválido, quando modelo 55 (NFe) | Chave de acesso informada é  inválida | Sistema rejeita emissão, exibe  mensagem de erro específica  ("Chave de acesso está inválida."). |
| Consulta após emissão | Sacador busca duplicata  emitida na tela de consulta | Sistema exibe duplicata com  status, IUD, UD e histórico de  ações. |
| Status da Duplicata (Livre vs. Comprometida) | Duplicata associada a contrato de extensão automática | Sistema define status como "Comprometida (BLOQ)" e  notifica Agente Financiador (via  mensagem ntfc.001). |
| Notificação ao Sacado | Duplicata emitida com sucesso | Sistema envia notificação ao  Sacado (e-mail cadastrado no SPC  Grafeno). |
| Upload válido – Arquivo CSV com dados de duplicatas  corretas | Arquivo .CSV com registros  válidos (campos obrigatórios  preenchidos, formatos corretos) | Sistema processa o arquivo, exibe  status "Processado", com 5 emitidas e 0 pendentes. |
| Campo obrigatório faltante – Arquivo sem "Número da Fatura" | Arquivo .CSV com uma linha  sem o campo "Número da  Fatura" | Sistema identifica a linha específica, exibe status "Processado”, com 1 pendente (motivo: “Campo obrigatório faltante”). |
| Arquivo vazio – CSV  sem registros | Arquivo .CSV vazio (0 KB) | Sistema rejeita o upload, exibe  mensagem: "Arquivo vazio. Insira  um CSV válido." |
| Tipo de arquivo inválido – Upload de PDF | Arquivo em formato .PDF (não CSV) | Sistema bloqueia o upload, exibe mensagem: "Formato inválido.  Apenas .CSV é aceito." |
| Arquivo CSV com tamanho acima do limite | Arquivo .CSV com tamanho  acima do limite permitido  pelo sistema | Sistema rejeita, exibe status "Erro" (motivo: "Tamanho excede limite permitido do Sistema"). |
| Processamento parcial – 3 válidas e 2  inválidas | Arquivo com 3 duplicatas válidas e 2 inválidos | Sistema processa 3 emitidas e 2  pendentes, com detalhes dos erros por linha. |
| CSV corrompido – Arquivo com estrutura  ilegível | Arquivo .CSV com caracteres  ilegíveis ou delimitadores  inconsistentes | Sistema aborta o processamento, exibe status "Erro" e mensagem: "Arquivo corrompido. Verifique o formato." |
