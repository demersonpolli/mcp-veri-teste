## Histórias de Usuário Melhoradas

### História de Usuário: SR-060a | Emitir Duplicata Escritural – Preenchimento Manual

**Como** Sacador  
**desejo** emitir uma Duplicata Escritural através do preenchimento manual dos campos obrigatórios em uma interface web  
**para** formalizar uma transação mercantil cuja fatura é relativa à venda de bens e/ou prestação de serviços, com pagamento a prazo.

#### Notas de Alteração
- **Separação de Capacidades**: Dividi a história original em duas, para tratar separadamente o preenchimento manual e o upload do arquivo CSV, aumentando a clareza e a unicidade.
- **Simplificação e Foco**: Enfatizei o processo de preenchimento manual na interface web, removendo detalhes desnecessários para o contexto da história de usuário.

### História de Usuário: SR-060b | Emitir Duplicata Escritural – Upload de Arquivo CSV

**Como** Sacador  
**desejo** emitir uma ou mais Duplicatas Escriturais através do upload de um arquivo CSV padronizado na interface web  
**para** formalizar transações mercantis com faturas relativas à venda de bens e/ou prestação de serviços, com pagamento a prazo.

#### Notas de Alteração
- **Separação de Capacidades**: A história foi separada para focar exclusivamente no processo de upload, destacando as diferenças no fluxo e nos requisitos não funcionais (ex.: processamento assíncrono).
- **Especificidade**: Especifiquei que o arquivo deve ser padronizado, reforçando a importância da conformidade com o formato esperado.

### História de Usuário: SR-060c | Gestão de Vínculos do Sacado

**Como** Sistema de Escrituração  
**desejo** gerenciar automaticamente os vínculos entre Sacador e Sacado durante a emissão de Duplicatas Escriturais  
**para** assegurar que as informações do Sacado estejam sempre atualizadas na base de dados e na Base de Controle da PLAT.

#### Notas de Alteração
- **Foco em Gestão de Dados**: Destacamos a gestão de vínculos como uma capacidade independente devido às suas regras e SLAs específicos.
- **Claridade e Objetividade**: A história agora foca na atualização e manutenção automática dos dados do Sacado, realçando sua importância dentro do processo.

### Notas Gerais
1. **Clarificação e Precisão**: A linguagem foi ajustada para ser mais direta e precisa, eliminando ambiguidades e expressões vagas.
2. **Singularidade e Modularidade**: As histórias foram divididas para tratar funcionalidades distintas, facilitando o desenvolvimento, teste e manutenção.