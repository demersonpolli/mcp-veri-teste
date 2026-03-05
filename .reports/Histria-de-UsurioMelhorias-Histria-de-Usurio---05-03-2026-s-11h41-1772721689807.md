# Reescrita e Melhoria das Histórias de Usuário

## História de Usuário Melhorada: **SR-060 | Emitir Duplicata Escritural – por comando do Sacador (Upload de arquivo e preenchimento manual)**

### 1) Descrição

**Como** Sacador **quero** emitir uma Duplicata Escritural através da interface web SPC Grafeno, de modo a formalizar uma transação comercial com pagamento a prazo, utilizando uma das seguintes opções:
- Preencher manualmente os campos obrigatórios de uma Duplicata Escritural em uma interface amigável; ou
- Realizar o upload de um arquivo .CSV, devidamente padronizado, com as informações de uma ou mais Duplicatas.

**Nota:** Clarifiquei a descrição da história, destacando os dois métodos de emissão e a finalidade clara da transação.

### 2) Funcionalidades / Regras de Negócio

#### 2.1) Preenchimento Manual

**O que faz?** Permite ao Sacador preencher manualmente os campos obrigatórios da Duplicata Escritural.

- Após o preenchimento, o sistema apresenta uma tela de resumo com todos os dados preenchidos e dados adicionais recuperados automaticamente do banco de dados SPC Grafeno, como:
  - Data de Emissão
  - Identificação do Sacador
  - Endereço do Sacador
  - Tipo de assinatura (preencher com “Tácita”)

- Com a confirmação do Sacador na tela de resumo, o sistema valida os dados e:

  - Se todos os dados estiverem corretos:
    - Emite a Duplicata, gerando um Identificador Único (IUD)
    - Associa a IUD a uma Unidade de Duplicata (UD) com base em Sacador, Sacado e Data de Vencimento
    - Atualiza a situação do Sacado no SPC Grafeno e na Base de Controle da PLAT conforme necessário, respeitando o SLA de 10 minutos
    - Define o status da Duplicata como “Livre” ou “Comprometida” conforme regras de negociação
    - Notifica o Sacado e o Agente Financiador conforme aplicável, dentro de 5 minutos

  - Se houver inconsistências:
    - Exibe mensagens de erro específicas para correção
    - Define o status da Duplicata como “Pendente”

- A Duplicata deve ser visível na tela de consulta de Duplicatas para o Sacador.

**Nota:** Simplifiquei e tornei mais diretas as regras de validação e fluxos de decisão, removendo linguagem vaga.

#### 2.2) Upload de Arquivo .CSV

**O que faz?** Permite ao Sacador realizar o upload de um arquivo .CSV padronizado, contendo dados de múltiplas Duplicatas para emissão.

- O sistema processa o arquivo, exibindo uma tela de status que inclui:
  - Data/hora do Upload
  - Usuário responsável
  - Contagem de Duplicatas: Emitidas, Pendentes
  - Status do processamento
  - Detalhes de falhas, se houver

- As Duplicatas com erros são marcadas como “Pendentes” e requerem correção manual.

- O processamento deve ser assíncrono e continuar mesmo em caso de erros em algumas linhas do CSV.

**Nota:** Esclareci o processo de upload, removendo ambiguidades sobre o tratamento de erros e processamento assíncrono.

### 3) Campos para Emissão

**Campos obrigatórios e opcionais são especificados no dicionário de dados do sistema, garantindo clareza na entrada de dados e validações necessárias.**

**Nota:** Mantive a referência a um dicionário de dados para garantir consistência e clareza, evitando redundâncias no documento.

### 4) Personas

- **Sacador:** Usuário que emite Duplicatas.
- **Escrituradora SPC Grafeno:** Sistema que executa a emissão.
- **Registradora SPC Grafeno:** Sistema que registra a Duplicata.

**Nota:** Esclareci as funções das personas, mantendo foco nos papéis principais.

### 5) Critérios de Aceite

- Validação de Sacador ativo e sem restrições.
- Campos obrigatórios preenchidos.
- Tela de resumo para revisão do Sacador.
- Geração de IUD e vinculação a UD.
- Status correto da Duplicata (Livre/Comprometida/Pendente).
- Tratamento automático do Sacado conforme normas de atualização.
- Unicidade da Duplicata confirmada.
- Histórico de ações com timestamps.
- Processamento de arquivos CSV conforme especificações.

**Nota:** Refinei os critérios de aceite, tornando-os mais específicos e testáveis.

### 6) Casos de Teste Básicos

| Cenário | Informação de Entrada | Resultado Esperado |
|---------|-----------------------|--------------------|
| Preenchimento válido | Sacador preenche todos os campos corretamente | Sistema exibe tela resumo com todos os dados corretamente preenchidos |
| Campos obrigatórios faltantes | Sacador omite "Data de Vencimento" | Sistema não avança, exibe mensagem de erro e status "Pendente" |
| Sacador com status 'Restrito' | Sacador logado tem status "Restrito" | Sistema bloqueia emissão, exibe mensagem de restrição |
| Upload de CSV válido | Arquivo .CSV com dados corretos | Sistema processa e emite Duplicatas com status "Processado" |

**Nota:** Estruturei os casos de teste para cobrir cenários comuns e de exceção, assegurando que todos os requisitos sejam verificáveis.