

# dott.ai Requirement Peer Review

### AI Agent: Requirements Engineer

A qualidade geral dos requisitos avaliados é de 81.2.

### Clareza e Não Ambiguidade

Score: 88

O documento apresenta um nível de detalhe considerável, especialmente nas seções de 'Lista

de campos para emissão' e 'Casos de Testes Básicos', que são exemplares em sua clareza e

especificidade. A inclusão de SLAs e referências a outras histórias de usuário também

contribui para a compreensibilidade e rastreabilidade dos requisitos.

No entanto, existem alguns pontos que introduzem ambiguidade ou tornam os requisitos

menos verificáveis:

1. Termos Abertos e Ambíguos:

•  Na seção 2.1, ao listar as informações a serem incluídas na tela resumo, o termo

'tais quais' é utilizado. Isso sugere que a lista pode não ser exaustiva, deixando em

aberto quais outras informações poderiam ser incluídas e gerando incerteza sobre

o escopo completo.

•  Similarmente, na seção 2.1, ao descrever as informações a serem conciliadas pelo

Sacador, a frase 'entre outras informações' cria a mesma ambiguidade, não

definindo claramente o conjunto completo de dados.

2. Loopholes e Linguagem Subjetiva/Opcional:

•  Na seção de 'Restrições/Situações Especiais', ao tratar dos dados do Sacado, a

frase 'podem ser obtidos pelo Sistema de Escrituração na base de “Cadastro de

Sacado”, quando existentes' introduz uma opcionalidade ('podem') que deveria ser

mais explícita. Se a obtenção é obrigatória quando os dados existem, o termo

'devem' seria mais adequado. O mesmo ocorre com 'Podendo ser atualizados,

quando um dado novo e diferente for informado', que deveria ser uma regra clara

de atualização.

3. Requisitos Não Verificáveis / Definições Posteriores:

•  Na seção de 'Restrições/Situações Especiais', ao descrever o mecanismo de

assinatura eletrônica para o Avalista, a frase '(a ser definido pelo time de

desenvolvimento)' é um anti-padrão de requisito. Um requisito deve especificar o

que o sistema deve fazer, não delegar a definição de um aspecto funcional crítico

para a fase de desenvolvimento. Isso torna o requisito não verificável no momento

da análise.

•  Na seção 2.2, nas 'Restrições' para o upload de arquivo CSV, a frase 'O Sistema

deve suportar upload de arquivo conforme tamanho definido pelo time técnico'

também é um requisito não verificável. O tamanho máximo do arquivo deve ser

especificado como parte do requisito, e não deixado para uma definição posterior

pela equipe técnica.

4. Termos que Implicam Totalidade:

•  Na seção 2.2, nas 'Restrições', a afirmação 'Todas as ações (upload, erros,

emissões) devem ser logadas pelo Sistema' utiliza o termo 'Todas', que é muito

abrangente. Seria mais claro especificar quais ações devem ser logadas e quais

informações específicas devem ser registradas para cada uma, para evitar

interpretações diversas.

5. Pequenas Inconsistências/Redundâncias:

•  A notificação do Sacado sobre a emissão da Duplicata em até 5 minutos (SLA) é

mencionada duas vezes na seção 2.1. Embora não seja uma ambiguidade, é uma

redundância.

•  Pequenos erros de digitação como 'eneDuplicata' e 'Exemplo:t' são detalhes

menores, mas indicam uma revisão final que poderia ser mais apurada.

As seções de 'Lista de campos' e 'Casos de Testes Básicos' são pontos fortes que compensam

muitas das ambiguidades textuais, fornecendo exemplos concretos e especificações

detalhadas que auxiliam na interpretação e verificação. No entanto, as falhas nos requisitos

não verificáveis e nos termos abertos impedem uma pontuação perfeita.

### Completude

Score: 90

O requisito é extremamente detalhado e bem estruturado, fornecendo uma compreensão

abrangente da funcionalidade de emissão de Duplicata Escritural. Ele descreve claramente o

propósito, as personas envolvidas, as regras de negócio para preenchimento manual e upload

de CSV, um dicionário de dados exaustivo, critérios de aceite e casos de teste básicos.

Pontos Fortes:

•  Detalhe Funcional: As descrições das funcionalidades e regras de negócio são muito

ricas, cobrindo fluxos de sucesso e de erro, validações, atualizações de status,

notificações e interações com outros sistemas (PL AT, Registro SPC Grafeno).

•  Dicionário de Dados: A seção 3, com a lista de campos, formatos, obrigatoriedade e

validações, é um ponto altíssimo, garantindo clareza sobre os dados de entrada.

•  Casos de Teste: A inclusão de casos de teste básicos é excelente para validar o

entendimento e a cobertura do requisito.

•  Unicidade e Restrições: Regras claras para unicidade da duplicata, restrições do

Sacador e tratamento de Sacados existentes/novos são bem definidas.

•  SLAs: Prazos (SLAs) para notificações e atualizações são especificados, o que é crucial

para requisitos não funcionais.

Pontos de Incompletude (que impedem um score perfeito):

•  Mecanismo de Assinatura do Avalista: A regra para o Avalista diferente do Sacador

menciona que o sistema deve disponibilizar um "mecanismo para assinatura eletrônica

(a ser definido pelo time de desenvolvimento)". Esta é uma lacuna funcional

significativa, pois um aspecto crítico do fluxo é deixado em aberto para definição

futura, tornando o requisito incompleto neste ponto.

•  Tamanho do Arquivo CSV: A restrição "O Sistema deve suportar upload de arquivo

conforme tamanho definido pelo time técnico" também deixa um requisito não

funcional importante (capacidade/performance) sem uma especificação clara. Um

requisito completo deveria indicar um limite ou uma faixa esperada.

•  Referências Externas: Embora seja uma prática comum e boa referenciar outras

histórias de usuário (ex: AF-070, SO-025, SR-155, SR-999, SR-080/SR-100/SR-110), a

instrução para este exercício é que o requisito deve ser compreendido "sem precisar de

outras informações". Para uma completude absoluta, os detalhes cruciais dessas

referências deveriam ser resumidos ou incluídos, ou o requisito deveria ser considerado

parte de um conjunto maior e interdependente. No entanto, o impacto dessas

referências é geralmente bem descrito no documento atual, minimizando a dependência

para o entendimento geral.

•  Referência da Tabela BCB: A menção de "Utilizar tabela BCB para seleção pelo

usuário (incluir referência no anexo)" indica que uma referência externa é necessária e

não foi incluída no texto fornecido.

Em resumo, o documento é de altíssima qualidade e muito próximo da completude, mas as

duas definições "a ser definido pelo time de desenvolvimento" e "definido pelo time técnico"

são os principais fatores que o impedem de atingir um score de 100, pois exigem informações

adicionais para a implementação completa.

### Conteúdo Funcional

Score: 95

O documento apresenta uma descrição funcional extremamente detalhada e bem estruturada.

A história de usuário é clara, e as duas principais funcionalidades (preenchimento manual e

upload de CSV) são desdobradas com grande nível de detalhe.

Pontos Fortes:

1. Clareza e Detalhamento Funcional: Cada funcionalidade é descrita com precisão,

incluindo o fluxo de usuário, as ações do sistema, as validações e as respostas esperadas

(caminhos de sucesso e de erro).

2. Regras de Negócio Explícitas: As regras de negócio são incorporadas diretamente na

descrição funcional, como a verificação e atualização do Sacado na base de dados, a

atribuição de status da Duplicata (Livre/Comprometida/Pendente) e as condições para

a geração do IUD.

3. Tratamento de Casos Especiais/Restrições: Situações como Sacador restrito ou

inativo, unicidade da Duplicata, e regras para Avalista são bem abordadas,

demonstrando uma análise aprofundada dos cenários.

4. Integração e Dependências: Há referências claras a outras histórias de usuário

(AF-070, SO-025, SR-155, etc.) e a sistemas externos (PL AT, Registro SPC Grafeno), o

que indica uma visão sistêmica e evita redundâncias.

5. Especificação de Dados (Dicionário de Dados): A seção 'Lista de campos para

emissão' é um excelente dicionário de dados, detalhando formato, tamanho,

obrigatoriedade e validação para cada campo. Isso é crucial para a implementação e

testes.

6. Critérios de Aceite (DoD) Robustos: Os critérios de aceite funcionais são diretos,

mensuráveis e cobrem os pontos essenciais da funcionalidade, alinhando-se

perfeitamente com a descrição.

7. Casos de Teste Abrangentes: A seção 'Casos de Testes Básicos' é um diferencial. Ela

valida explicitamente a maioria dos requisitos funcionais e critérios de aceite, cobrindo

cenários positivos, negativos e de borda para ambas as formas de emissão (manual e

CSV). Isso torna o requisito altamente testável e reduz ambiguidades.

8. Tratamento de Erros e Resiliência: A descrição do processamento de CSV, incluindo o

tratamento assíncrono, a não-interrupção por erros individuais e o detalhamento dos

motivos de falha, demonstra uma preocupação com a robustez do sistema.

9. Performance como Atributo da Função: A inclusão de SLAs (Service Level

Agreements) para notificações e atualizações (ex: 10 minutos para PL AT, 5 minutos

para notificação do Sacado) é apropriada, pois define o desempenho esperado de

funções específicas.

Pontos de Melhoria (Menores):

1. Detalhe da Assinatura Eletrônica: A menção de que o mecanismo de assinatura

eletrônica para o Avalista diferente do Sacador será 'a ser definido pelo time de

desenvolvimento' é uma pequena lacuna funcional. Embora o comportamento do

sistema (Duplicata 'Pendente' até a assinatura) esteja claro, o método em si ainda é uma

incógnita funcional.

2. Tamanho do Arquivo CSV: A restrição de que o sistema deve suportar upload de

arquivo 'conforme tamanho definido pelo time técnico' é uma dependência de um

requisito não funcional (performance/escalabilidade) que poderia ser mais bem

especificada ou referenciada a um documento de NFRs, mas não prejudica a clareza

funcional.

No geral, este é um documento de requisitos funcionais de alta qualidade, que fornece uma

base sólida para o desenvolvimento e teste do software.

### Introdução e Definição de Escopo

Score: 95

A introdução, apresentada como uma História de Usuário, define de forma excelente o

propósito e o escopo do requisito.

Propósito: O propósito é claramente articulado: "Como Sacador desejo emitir uma Duplicata

Escritural... Para formalizar uma transação mercantil, cujo pagamento é definido 'a prazo'

com uma fatura relativa à venda efetiva de bens e/ou prestação de serviços." Esta frase final

é crucial, pois estabelece o valor de negócio e a necessidade fundamental da funcionalidade,

justificando o porquê da existência deste requisito.

Escopo: O escopo é bem delimitado, indicando que a emissão será "através da interface web

SPC Grafeno" e especificando as duas modalidades de entrada de dados: "Preenchimento

manual, em tela" ou "Upload de um arquivo .CSV padronizado". Isso define claramente o que

o sistema deve fazer e como o usuário pode interagir com ele para atingir o objetivo.

Justificativa das Funcionalidades: A necessidade das funcionalidades (preenchimento

manual e upload de CSV) é diretamente justificada pelo propósito de emitir a Duplicata

Escritural. Ao oferecer duas opções, o requisito implicitamente atende a diferentes cenários

de uso (e.g., emissão individual vs. em massa), o que é uma prática comum e bem

compreendida. A introdução estabelece um contexto sólido para as descrições detalhadas das

funcionalidades que se seguem, tornando claro o objetivo geral antes de mergulhar nos

detalhes técnicos.

### Linguagem

Score: 80

O documento apresenta uma estrutura clara e bem organizada, com uma boa distinção entre

a descrição funcional, regras de negócio, lista de campos e critérios de aceite. A utilização

consistente do termo 'deve' e 'deverá' para indicar requisitos mandatórios é um ponto forte,

assim como a inclusão de SLAs específicos e a ausência do termo 'must'. Os casos de teste

básicos são detalhados e cobrem diversos cenários, o que auxilia na validação dos requisitos.

No entanto, existem algumas áreas que podem ser aprimoradas para aumentar a clareza e a

verificabilidade dos requisitos:

1. Voz Passiva Excessiva: Há um uso frequente da voz passiva (ex: 'deve ser incluídas',

'deve ser realizada', 'deverão ser aplicados', 'deve ser exibida', 'devem ser preenchidos',

'deve ser padronizado', 'devem ser detalhados', 'devem ser logadas'). Embora a voz

passiva ainda transmita a obrigatoriedade, a voz ativa é preferível para atribuir

responsabilidade e tornar o requisito mais direto (ex: 'O Sistema de Escrituração deve

incluir...', 'O sistema deve realizar...').

2. Requisitos Negativos: Alguns requisitos são formulados de forma negativa (ex: 'não

pode emitir Duplicata', 'não deve ter os dados do Sacado alterado', 'não devem bloquear

o processamento das demais'). Requisitos positivos são geralmente mais claros e fáceis

de verificar (ex: 'O Sistema de Escrituração deve impedir a emissão de Duplicatas se o

Sacador tiver status 'Restrito'').

3. Termos Vagos e Abertos (Loopholes):

•  'conforme definições da história X': Esta frase é repetida várias vezes. Embora

referenciar outras histórias seja válido, a dependência de definições externas

torna o requisito menos autocontido e mais difícil de verificar sem consultar o

documento referenciado. Seria ideal resumir as definições relevantes ou

especificar os critérios diretamente.

•  'a ser definido pelo time de desenvolvimento': Esta é uma lacuna clara. Um

requisito não deve deixar a definição de um mecanismo crítico para o time de

desenvolvimento; o mecanismo ou os critérios para sua definição devem ser

especificados.

•  'conforme tamanho definido pelo time técnico': Similar ao ponto anterior, o

tamanho do arquivo deve ser um valor concreto e mensurável, não algo a ser

definido posteriormente.

•  'entre outras informações': Termo aberto que dificulta a completude e a

verificação.

4. 'deve poder' (Shall be able to): A construção 'deve poder baixar' (em 'o usuário deve

poder baixar um log de erros') deve ser evitada. A forma preferível seria 'O sistema

deve permitir que o usuário baixe...'.

5. 'Implied Shall' em Listas: Em algumas listas de ações (ex: sob 'Se OK' ou nos Critérios

de Aceite), o 'deve' é implícito para cada item. Repetir o 'deve' explicitamente para cada

ação na lista aumentaria a clareza e a formalidade.

Em resumo, o documento é de boa qualidade e atende à maioria dos critérios para requisitos

de software. As melhorias propostas visam refinar a linguagem para maior precisão,

verificabilidade e conformidade com as melhores práticas de engenharia de requisitos.

### Nível de Abstração

Score: 65

O documento apresenta uma descrição detalhada e abrangente da funcionalidade de emissão

de Duplicatas Escriturais, começando com uma história de usuário clara e detalhando as

regras de negócio, campos, personas, critérios de aceite e casos de teste. Isso contribui para

uma boa compreensão do 'o quê' o sistema deve fazer.

No entanto, o nível de abstração do documento é comprometido pela inclusão de diversos

detalhes que se inclinam para o 'como' e impõem restrições de design e arquitetura

desnecessárias para um requisito de software neste nível. Exemplos incluem:

1. Acoplamento Arquitetural Explícito: Há referências diretas e frequentes a sistemas

externos e mecanismos de integração específicos, como 'Base de Controle da PLAT' e

'através da mensagem da PLAT ctrl.007', 'ctrl.011' e 'ntfc.001'. Essas especificações

ditam a forma como a integração deve ser implementada, em vez de apenas o resultado

esperado da integração.

2. Detalhes de Implementação Interna: A menção de códigos de status internos como

'LIVR' e 'BLOQ' para a Duplicata, embora úteis para clareza, são detalhes de

implementação que poderiam ser abstraídos para um nível mais alto (ex: 'status de livre

negociação' ou 'status de negociação comprometida').

3. Restrições de Formato e Processamento: A exigência de 'Upload de um arquivo .CSV

padronizado' e a especificação de que 'O processamento do arquivo deve ser assíncrono'

são detalhes de implementação. Embora o formato CSV possa ser uma restrição de

interface necessária, a forma de processamento (assíncrono) é uma decisão de design.

4. Detalhes Excessivos na Definição de Dados: A 'Lista de campos para emissão' (seção

3) é extremamente granular, incluindo formato, tamanho e validações específicas.

Embora essa informação seja vital para a implementação, sua inclusão direta no

documento de requisitos, em vez de um dicionário de dados ou especificação de

interface separada, reduz a abstração do requisito funcional.

5. Restrições de Design de UI: 'Utilizar tabela BCB para seleção pelo usuário' é um

detalhe de como a interface do usuário deve ser construída.

6. Acoplamento de Modelo de Dados: 'A estrutura dos dados deve seguir o dicionário de

dados da PLAT (Catálogo)' impõe uma restrição direta sobre o modelo de dados interno

do sistema, ditando como os dados devem ser estruturados com base em um sistema

externo.

Embora seja compreensível que, em níveis mais baixos de decomposição, os requisitos

possam reconhecer decisões de design de alto nível (como a existência da PLAT), a

quantidade e a especificidade dos detalhes de 'como' presentes neste documento limitam a

independência da implementação e podem levar a soluções de design subótimas ao restringir

as opções da equipe de desenvolvimento. O documento poderia se beneficiar de uma

separação mais clara entre os requisitos funcionais ('o quê') e as especificações técnicas ou de

interface ('como').

### Conteúdo Não Funcional

Score: 45

O documento apresenta alguns pontos positivos na especificação de requisitos não funcionais,

mas possui lacunas significativas e áreas que necessitam de maior detalhamento e

quantificação para serem consideradas adequadas, especialmente para um sistema que lida

com transações financeiras e documentos legais como Duplicatas Escriturais.

Pontos Positivos:

•  Requisitos Quantitativos Explícitos: O documento inclui requisitos não funcionais

quantitativos claros e mensuráveis, como os SLAs:

○  "A inclusão do vínculo com o Sacado na Base de Controle da PL AT deve ser

realizada em até 10 minutos da emissão da primeira Duplicata contra o Sacado."

○  "O Sistema de Escrituração deve notificar o Sacado sobre a emissão da Duplicata

dentro do SL A previsto de até 5 minutos." Esses são excelentes exemplos de como

os requisitos não funcionais devem ser formulados, permitindo testes objetivos.

•  Menção de Auditabilidade e Rastreabilidade: A necessidade de manter histórico com

data/hora (timestamp) e hashes para evidência do processo é um bom início para

requisitos de auditabilidade e não-repúdio.

•  Usabilidade (parcial):: A menção de tela resumo e apresentação de progresso para

upload de arquivos contribui para a usabilidade, embora sem métricas específicas.

Pontos a Melhorar (Qualitativos e Vagos):

•  Desempenho (além dos SLAs): Embora existam SLAs para processos específicos,

faltam requisitos de desempenho para a interface do usuário (tempo de resposta para

preenchimento manual, exibição de telas, consultas), capacidade de processamento

(throughput) para o upload de arquivos CSV (ex: quantas duplicatas por minuto/hora).

•  Escalabilidade: A restrição "O Sistema deve suportar upload de arquivo conforme

tamanho definido pelo time técnico" é vaga. O tamanho máximo do arquivo (em MB ou

número de linhas/registros) deve ser explicitamente quantificado. Faltam também

requisitos sobre o número de usuários concorrentes ou o volume total de dados que o

sistema deve suportar.

•  Segurança: Para um sistema financeiro, os requisitos de segurança são insuficientes. A

menção de "hashes" é boa, mas faltam requisitos sobre:

○  Autenticação e autorização (ex: complexidade de senha, MFA).

○  Criptografia de dados (em trânsito e em repouso).

○  Proteção contra vulnerabilidades comuns (OWASP Top 10).

○  Não-repúdio para ações críticas (além do timestamp).

○  A frase "mecanismo para assinatura eletrônica (a ser definido pelo time de

desenvolvimento)" para o Avalista é uma lacuna crítica, pois a assinatura

eletrônica é um pilar de segurança e validade legal.

•  Confiabilidade/Disponibilidade: Não há requisitos explícitos sobre a disponibilidade

do sistema (ex: uptime de 99.9%), tempo médio entre falhas (MTBF) ou tempo médio

para recuperação (MTTR).

•  Manutenibilidade: Não há requisitos sobre a facilidade de manutenção do sistema,

como métricas de complexidade de código ou tempo para correção de defeitos.

•  Recuperabilidade: Faltam requisitos sobre objetivos de tempo de recuperação (RTO) e

objetivos de ponto de recuperação (RPO) em caso de desastre.

•  Retenção de Dados: Não há especificação sobre por quanto tempo os dados históricos

e logs devem ser mantidos.

Em resumo, o documento demonstra uma compreensão do conceito de requisitos não

funcionais quantitativos ao incluir alguns SLAs bem definidos. No entanto, a maioria dos

outros atributos de qualidade essenciais para um sistema desta natureza (segurança,

disponibilidade, escalabilidade, desempenho da UI, etc.) são ou ausentes, ou descritos de

forma qualitativa e vaga, ou deixados para serem definidos posteriormente, o que representa

um risco significativo para o projeto.

### Testabilidade

Score: 85

O documento de requisitos apresenta um nível muito bom de testabilidade e

mensurabilidade, com a maioria dos critérios claramente definidos para verificação. No

entanto, existem algumas áreas que poderiam ser aprimoradas para alcançar a perfeição.

Pontos Fortes:

1. SLAs Explícitos e Mensuráveis: O documento especifica claramente prazos para

operações críticas, como a inclusão do vínculo com o Sacado na Base de Controle da

PLAT (até 10 minutos) e a notificação do Sacado sobre a emissão da Duplicata (até 5

minutos). Estes são exemplos excelentes de requisitos de desempenho quantificáveis e

diretamente testáveis.

2. Dicionário de Dados Detalhado (Seção 3): A lista de campos para emissão é

extremamente bem detalhada, incluindo formato, tamanho, obrigatoriedade e regras de

validação específicas para cada campo. Isso torna a entrada de dados e as validações

altamente mensuráveis e verificáveis.

3. Critérios de Aceite (DoD) Abrangentes (Seção 5): A presença de uma seção dedicada

aos Critérios de Aceite é fundamental para a testabilidade. Eles resumem os pontos-

chave que precisam ser verificados, e a maioria deles é diretamente rastreável às

funcionalidades descritas.

4. Casos de Teste Básicos (Seção 6): A inclusão de cenários de teste com informações de

entrada e resultados esperados é um diferencial significativo. Estes casos fornecem

exemplos concretos de como os requisitos podem ser verificados, cobrindo tanto o

caminho feliz quanto cenários de erro e exceção.

5. Funcionalidades e Regras de Negócio Claras: As descrições das funcionalidades e

regras de negócio são detalhadas, permitindo a criação de planos de teste específicos

para cada etapa do processo de emissão da Duplicata, incluindo o tratamento de

Sacados existentes/inexistentes e a gestão de status.

6. Tratamento de Erros Definido: O documento especifica o comportamento do sistema

em caso de dados inválidos ou incompletos (ex: status 'Pendente', mensagens de erro), o

que é crucial para a testabilidade.

7. Regras de Unicidade: A Duplicata possui critérios de unicidade bem definidos,

permitindo testes claros para garantir que não haja duplicatas no sistema.

Pontos Fracos (Oportunidades de Melhoria):

1. Requisito de Capacidade/Desempenho Não Quantificado para Upload de CSV: A

restrição "O Sistema deve suportar upload de arquivo conforme tamanho definido pelo

time técnico" (item 2.2, Restrições) é uma falha significativa na mensurabilidade. O

tamanho máximo do arquivo ou o número máximo de Duplicatas por arquivo CSV

deveria ser especificado numericamente neste documento para que possa ser testado e

verificado de forma objetiva. A delegação dessa definição para a equipe técnica torna o

requisito não verificável no nível atual do documento.

2. Ambiguidade Temporal: A frase "No mesmo dia em que a Duplicata foi emitida/

escriturada o sistema de Escrituração deve enviar para registro..." (item 2.1) poderia ser

mais precisa. Embora 'no mesmo dia' seja compreensível, um prazo mais específico (ex:

'dentro de X horas' ou 'até o final do dia útil') eliminaria qualquer ambiguidade.

3. Mecanismo de Assinatura Eletrônica Indefinido: Para o caso de Avalista diferente do

Sacador, o documento menciona que o sistema deve "disponibilizar mecanismo para

assinatura eletrônica (a ser definido pelo time de desenvolvimento)". Embora o

comportamento do sistema (status 'Pendente' até a assinatura) seja verificável, a

ausência da definição do mecanismo em si impede a verificação da adequação da

solução de assinatura.

4. Menção de 'Hashes' no DoD: O critério de aceite "Registro de histórico com

timestamps e hashes" menciona 'hashes', mas a descrição detalhada do histórico (item

2.1) não especifica a inclusão ou o propósito desses hashes. Se forem um requisito, sua

função e como serão gerados/verificados deveriam ser explicitados na descrição

funcional.

Em resumo, o documento é um excelente exemplo de requisitos bem elaborados, com forte

foco na testabilidade através de SLAs, validações detalhadas e casos de teste. A principal

lacuna reside na falta de quantificação de um requisito de capacidade para o upload de

arquivos CSV, o que impede a verificação completa de um aspecto não funcional importante.

### Unicidade

Score: 65

O requisito descreve a funcionalidade central de 'Emitir Duplicata Escritural' e detalha dois

métodos para sua execução (preenchimento manual e upload de arquivo CSV). Embora esses

diferentes métodos sejam aceitáveis como condições para uma única capacidade, o requisito

também inclui explicitamente a 'Gestão de Vínculos do Sacado (Sacador x Sacado)'. Isso

envolve ações distintas, como verificar, adicionar e atualizar informações do sacado e seu

status em múltiplos bancos de dados internos e externos (SPC Grafeno e PLAT), com seus

próprios SLAs. Esta 'Gestão de Vínculos do Sacado' constitui uma capacidade separada,

embora relacionada, que idealmente deveria ser definida como um requisito singular próprio,

ou pelo menos claramente separada como um sub-requisito distinto. O agrupamento dessas

duas capacidades significativas (emissão de duplicata e gestão de vínculos do sacado) impede

que o requisito seja verdadeiramente singular.

Gerado por dott.ai: 2026-03-03 16:30:51