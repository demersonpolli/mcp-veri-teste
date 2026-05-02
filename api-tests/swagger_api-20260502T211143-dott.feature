# BDD Test Scenarios

## Summary

- Endpoints processed: 4
- Source input tokens: 0
- Source output tokens: 0

## Feature: Incluir títulos (POST /InclusaoTitulo)

```gherkin
Feature: Incluir títulos (POST /InclusaoTitulo)

  Background:
    Given the API endpoint is "POST /InclusaoTitulo"
    And the endpoint summary is "Incluir títulos"
    And the request path is "/InclusaoTitulo"
    And the HTTP method is "POST"
    And the endpoint tags are "InclusaoTitulo"

  # Positive Schema
  # Valida que o endpoint aceita payload com apenas campos obrigatórios válidos.
  Scenario: Payload mínimo válido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required, type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que controleInstituicaoFinanceira aceita exatamente o tamanho máximo.
  Scenario: controleInstituicaoFinanceira no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "controleInstituicaoFinanceira": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que controleInstituicaoFinanceira aceita null conforme o schema.
  Scenario: controleInstituicaoFinanceira nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "controleInstituicaoFinanceira": null,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CobrancaSimples",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CobrancaCaucionada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CobrancaVinculada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que codigoCarteira aceita valor permitido no enum.
  Scenario: codigoCarteira com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Vendor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que numeroContrato aceita exatamente o tamanho máximo.
  Scenario: numeroContrato no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ],
        "numeroContrato": "AAAAAAAAAA"
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que numeroContrato aceita null conforme o schema.
  Scenario: numeroContrato nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ],
        "numeroContrato": null
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos aceita null conforme o schema.
  Scenario: listaTitulos nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": null
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].dataLimiteDesconto aceita null conforme o schema.
  Scenario: listaTitulos[].dataLimiteDesconto nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "dataLimiteDesconto": null,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorPorAntecipacaoDiaUtil",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDesconto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDesconto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualPorAntecipacaoDiaUtil",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoAbatimento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoAbatimento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoAbatimento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoAbatimento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoAbatimento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoAbatimento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoAbatimento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoAbatimento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].seuNumero aceita exatamente o tamanho mínimo.
  Scenario: listaTitulos[].seuNumero no minLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].seuNumero aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].seuNumero no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoNegativar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NegativacaoDiasCorridos",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoProtesto aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoProtesto com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NegativacaoDiasUteis",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoInscricaoPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoInscricaoPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoInscricaoPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoInscricaoPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoInscricaoPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoInscricaoPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].numeroInscricaoPagador aceita exatamente o tamanho mínimo.
  Scenario: listaTitulos[].numeroInscricaoPagador no minLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].numeroInscricaoPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].numeroInscricaoPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "AAAAAAAAAAAAAA",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].nomePagador aceita exatamente o tamanho mínimo.
  Scenario: listaTitulos[].nomePagador no minLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].nomePagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].nomePagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].enderecoPagador aceita exatamente o tamanho mínimo.
  Scenario: listaTitulos[].enderecoPagador no minLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].enderecoPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].enderecoPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].complementoEnderecoPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].complementoEnderecoPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].complementoEnderecoPagador aceita null conforme o schema.
  Scenario: listaTitulos[].complementoEnderecoPagador nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoPagador": null,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].bairroPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].bairroPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].bairroPagador aceita null conforme o schema.
  Scenario: listaTitulos[].bairroPagador nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroPagador": null,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].cidadePagador aceita exatamente o tamanho mínimo.
  Scenario: listaTitulos[].cidadePagador no minLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].cidadePagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].cidadePagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "BA",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "CE",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "DF",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "ES",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "GO",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "MA",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "MT",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "MS",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "MG",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "PA",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "PB",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "PR",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "PE",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "PI",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "RJ",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "RN",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "RS",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "RO",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "RR",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "SC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "SP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "SE",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "TO",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufPagador aceita valor permitido no enum.
  Scenario: listaTitulos[].ufPagador com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "NaoInformado",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].emailPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].emailPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emailPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].emailPagador aceita null conforme o schema.
  Scenario: listaTitulos[].emailPagador nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emailPagador": null,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].telefonePagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].telefonePagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "telefonePagador": "AAAAAAAAAAAAA",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].telefonePagador aceita null conforme o schema.
  Scenario: listaTitulos[].telefonePagador nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "telefonePagador": null,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].celularPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].celularPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "celularPagador": "AAAAAAAAAAAAA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].celularPagador aceita null conforme o schema.
  Scenario: listaTitulos[].celularPagador nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "celularPagador": null,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].nossoNumero aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].nossoNumero no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "nossoNumero": "AAAAAAAAAAAAAAA",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].nossoNumero aceita null conforme o schema.
  Scenario: listaTitulos[].nossoNumero nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "nossoNumero": null,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualAnualDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "Isento",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "ValorDiasUteis",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasUteis",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasUteis",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMora aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMora com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualAnualDiasUteis",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NotaPromissoria",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Recibo",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "ApoliceDeSeguro",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "CartaoCredito",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "BoletoDepositoAporte",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].especie aceita valor permitido no enum.
  Scenario: listaTitulos[].especie com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Outros",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].aceite aceita exatamente o tamanho mínimo.
  Scenario: listaTitulos[].aceite no minLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoInscricaoBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoInscricaoBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoBeneficiarioFinal": "NaoInformado",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoInscricaoBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoInscricaoBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoBeneficiarioFinal": "PessoaFisica",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoInscricaoBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoInscricaoBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoBeneficiarioFinal": "PessoaJuridica",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].numeroInscricaoBeneficiarioFinal aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].numeroInscricaoBeneficiarioFinal no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoBeneficiarioFinal": "AAAAAAAAAAAAAA",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].numeroInscricaoBeneficiarioFinal aceita null conforme o schema.
  Scenario: listaTitulos[].numeroInscricaoBeneficiarioFinal nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoBeneficiarioFinal": null,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].nomeBeneficiarioFinal aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].nomeBeneficiarioFinal no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomeBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].nomeBeneficiarioFinal aceita null conforme o schema.
  Scenario: listaTitulos[].nomeBeneficiarioFinal nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomeBeneficiarioFinal": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].enderecoBeneficiarioFinal aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].enderecoBeneficiarioFinal no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].enderecoBeneficiarioFinal aceita null conforme o schema.
  Scenario: listaTitulos[].enderecoBeneficiarioFinal nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoBeneficiarioFinal": null,
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].complementoEnderecoBeneficiarioFinal aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].complementoEnderecoBeneficiarioFinal no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].complementoEnderecoBeneficiarioFinal aceita null conforme o schema.
  Scenario: listaTitulos[].complementoEnderecoBeneficiarioFinal nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoBeneficiarioFinal": null,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].bairroBeneficiarioFinal aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].bairroBeneficiarioFinal no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].bairroBeneficiarioFinal aceita null conforme o schema.
  Scenario: listaTitulos[].bairroBeneficiarioFinal nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroBeneficiarioFinal": null,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].cidadeBeneficiarioFinal aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].cidadeBeneficiarioFinal no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadeBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].cidadeBeneficiarioFinal aceita null conforme o schema.
  Scenario: listaTitulos[].cidadeBeneficiarioFinal nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadeBeneficiarioFinal": null,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "AC",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "AL",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "AP",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "AM",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "BA",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "CE",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "DF",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "ES",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "GO",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "MA",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "MT",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "MS",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "MG",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "PA",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "PB",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "PR",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "PE",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "PI",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "RJ",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "RN",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "RS",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "RO",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "RR",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "SC",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "SP",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "SE",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "TO",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].ufBeneficiarioFinal aceita valor permitido no enum.
  Scenario: listaTitulos[].ufBeneficiarioFinal com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPagamento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPagamento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPagamento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPagamento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPagamento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPagamento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPagamento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPagamento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPagamento aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPagamento com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "SomenteValorMinimo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoValorMaximo aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoValorMaximo com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoValorMaximo aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoValorMaximo com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoValorMaximo aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoValorMaximo com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoValorMinimo aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoValorMinimo com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoValorMinimo aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoValorMinimo com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoValorMinimo aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoValorMinimo com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMulta aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMulta com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMulta aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMulta com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMulta aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMulta com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoMulta aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoMulta com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoEmiteBoleto",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BeneficiarioEmiteBoleto",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoEmiteViaEmail",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoEnviaEmailESMS",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoEnviaSMS",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoImprimeEnviaEmail",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoImprimeEnviaSMS",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoPostagem aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoPostagem com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "BancoImprimeEnviaEmailSMS",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem1 aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].mensagem1 no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem1": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem1 aceita null conforme o schema.
  Scenario: listaTitulos[].mensagem1 nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem1": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem2 aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].mensagem2 no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem2": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem2 aceita null conforme o schema.
  Scenario: listaTitulos[].mensagem2 nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem2": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem3 aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].mensagem3 no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem3": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem3 aceita null conforme o schema.
  Scenario: listaTitulos[].mensagem3 nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem3": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem4 aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].mensagem4 no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem4": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].mensagem4 aceita null conforme o schema.
  Scenario: listaTitulos[].mensagem4 nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem4": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].transactionID aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].transactionID no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "transactionID": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].transactionID aceita null conforme o schema.
  Scenario: listaTitulos[].transactionID nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "transactionID": null,
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].chavePix aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].chavePix no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "chavePix": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].chavePix aceita null conforme o schema.
  Scenario: listaTitulos[].chavePix nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "chavePix": null,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDiasBaixa aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDiasBaixa com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoDiasBaixa": "Uteis",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].tipoDiasBaixa aceita valor permitido no enum.
  Scenario: listaTitulos[].tipoDiasBaixa com valor válido de enum
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoDiasBaixa": "Corridos",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].solicitacaoPagador aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].solicitacaoPagador no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "solicitacaoPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].solicitacaoPagador aceita null conforme o schema.
  Scenario: listaTitulos[].solicitacaoPagador nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "solicitacaoPagador": null,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].informacoesAdicionais aceita null conforme o schema.
  Scenario: listaTitulos[].informacoesAdicionais nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].informacoesAdicionais[].nomeCampo aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].informacoesAdicionais[].nomeCampo no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "nomeCampo": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].informacoesAdicionais[].nomeCampo aceita null conforme o schema.
  Scenario: listaTitulos[].informacoesAdicionais[].nomeCampo nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "nomeCampo": null
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].informacoesAdicionais[].valorCampo aceita exatamente o tamanho máximo.
  Scenario: listaTitulos[].informacoesAdicionais[].valorCampo no maxLength
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "valorCampo": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida que listaTitulos[].informacoesAdicionais[].valorCampo aceita null conforme o schema.
  Scenario: listaTitulos[].informacoesAdicionais[].valorCampo nulo permitido
    Given a positive schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "valorCampo": null
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200


  # Negative Schema
  # Valida que o endpoint rejeita controleInstituicaoFinanceira maior que o máximo.
  Scenario: controleInstituicaoFinanceira acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "controleInstituicaoFinanceira": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita controleInstituicaoFinanceira com tipo incorreto.
  Scenario: controleInstituicaoFinanceira com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "controleInstituicaoFinanceira": 999,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de codigoConvenio.
  Scenario: codigoConvenio ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoConvenio.
  Scenario: codigoConvenio null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": null,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita codigoConvenio com tipo incorreto.
  Scenario: codigoConvenio com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": "texto_invalido",
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de codigoModalidade.
  Scenario: codigoModalidade ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoModalidade.
  Scenario: codigoModalidade null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": null,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita codigoModalidade com tipo incorreto.
  Scenario: codigoModalidade com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": "texto_invalido",
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de codigoCarteira.
  Scenario: codigoCarteira ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoCarteira.
  Scenario: codigoCarteira null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": null,
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em codigoCarteira.
  Scenario: codigoCarteira fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "__VALOR_INVALIDO_ENUM__",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita codigoCarteira com tipo incorreto.
  Scenario: codigoCarteira com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": 999,
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita numeroContrato maior que o máximo.
  Scenario: numeroContrato acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ],
        "numeroContrato": "AAAAAAAAAAA"
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita numeroContrato com tipo incorreto.
  Scenario: numeroContrato com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ],
        "numeroContrato": 999
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoBeneficiario.
  Scenario: codigoBeneficiario null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoBeneficiario": null,
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita codigoBeneficiario com tipo incorreto.
  Scenario: codigoBeneficiario com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoBeneficiario": "texto_invalido",
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos.
  Scenario: listaTitulos ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos com tipo incorreto.
  Scenario: listaTitulos com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": "nao_e_array"
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].vencimento.
  Scenario: listaTitulos[].vencimento ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].vencimento.
  Scenario: listaTitulos[].vencimento null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": null
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].vencimento com tipo incorreto.
  Scenario: listaTitulos[].vencimento com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": 999
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].dataLimiteDesconto com tipo incorreto.
  Scenario: listaTitulos[].dataLimiteDesconto com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "dataLimiteDesconto": 999,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoDesconto.
  Scenario: listaTitulos[].tipoDesconto ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoDesconto.
  Scenario: listaTitulos[].tipoDesconto null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": null,
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoDesconto.
  Scenario: listaTitulos[].tipoDesconto fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "__VALOR_INVALIDO_ENUM__",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoDesconto com tipo incorreto.
  Scenario: listaTitulos[].tipoDesconto com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": 999,
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorDesconto.
  Scenario: listaTitulos[].valorDesconto null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorDesconto": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorDesconto com tipo incorreto.
  Scenario: listaTitulos[].valorDesconto com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorDesconto": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoAbatimento.
  Scenario: listaTitulos[].tipoAbatimento ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoAbatimento.
  Scenario: listaTitulos[].tipoAbatimento null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": null,
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoAbatimento.
  Scenario: listaTitulos[].tipoAbatimento fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "__VALOR_INVALIDO_ENUM__",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoAbatimento com tipo incorreto.
  Scenario: listaTitulos[].tipoAbatimento com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": 999,
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorAbatimento.
  Scenario: listaTitulos[].valorAbatimento null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorAbatimento": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorAbatimento com tipo incorreto.
  Scenario: listaTitulos[].valorAbatimento com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorAbatimento": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].valorTitulo.
  Scenario: listaTitulos[].valorTitulo ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorTitulo.
  Scenario: listaTitulos[].valorTitulo null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": null,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorTitulo com tipo incorreto.
  Scenario: listaTitulos[].valorTitulo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": "texto_invalido",
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].seuNumero.
  Scenario: listaTitulos[].seuNumero ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].seuNumero.
  Scenario: listaTitulos[].seuNumero null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": null,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].seuNumero menor que o mínimo.
  Scenario: listaTitulos[].seuNumero abaixo do minLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].seuNumero maior que o máximo.
  Scenario: listaTitulos[].seuNumero acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].seuNumero com tipo incorreto.
  Scenario: listaTitulos[].seuNumero com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": 999,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoProtesto.
  Scenario: listaTitulos[].tipoProtesto ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoProtesto.
  Scenario: listaTitulos[].tipoProtesto null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": null,
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoProtesto.
  Scenario: listaTitulos[].tipoProtesto fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "__VALOR_INVALIDO_ENUM__",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoProtesto com tipo incorreto.
  Scenario: listaTitulos[].tipoProtesto com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": 999,
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].prazoProtesto.
  Scenario: listaTitulos[].prazoProtesto null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "prazoProtesto": null,
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].prazoProtesto com tipo incorreto.
  Scenario: listaTitulos[].prazoProtesto com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "prazoProtesto": "texto_invalido",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].emissao.
  Scenario: listaTitulos[].emissao ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].emissao.
  Scenario: listaTitulos[].emissao null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": null,
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].emissao com tipo incorreto.
  Scenario: listaTitulos[].emissao com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": 999,
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoInscricaoPagador.
  Scenario: listaTitulos[].tipoInscricaoPagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoInscricaoPagador.
  Scenario: listaTitulos[].tipoInscricaoPagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": null,
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoInscricaoPagador.
  Scenario: listaTitulos[].tipoInscricaoPagador fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "__VALOR_INVALIDO_ENUM__",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoInscricaoPagador com tipo incorreto.
  Scenario: listaTitulos[].tipoInscricaoPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": 999,
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].numeroInscricaoPagador.
  Scenario: listaTitulos[].numeroInscricaoPagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].numeroInscricaoPagador.
  Scenario: listaTitulos[].numeroInscricaoPagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": null,
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].numeroInscricaoPagador menor que o mínimo.
  Scenario: listaTitulos[].numeroInscricaoPagador abaixo do minLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].numeroInscricaoPagador maior que o máximo.
  Scenario: listaTitulos[].numeroInscricaoPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "AAAAAAAAAAAAAAA",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].numeroInscricaoPagador com tipo incorreto.
  Scenario: listaTitulos[].numeroInscricaoPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": 999,
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].nomePagador.
  Scenario: listaTitulos[].nomePagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].nomePagador.
  Scenario: listaTitulos[].nomePagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": null,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nomePagador menor que o mínimo.
  Scenario: listaTitulos[].nomePagador abaixo do minLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nomePagador maior que o máximo.
  Scenario: listaTitulos[].nomePagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nomePagador com tipo incorreto.
  Scenario: listaTitulos[].nomePagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": 999,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].enderecoPagador.
  Scenario: listaTitulos[].enderecoPagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].enderecoPagador.
  Scenario: listaTitulos[].enderecoPagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": null,
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].enderecoPagador menor que o mínimo.
  Scenario: listaTitulos[].enderecoPagador abaixo do minLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].enderecoPagador maior que o máximo.
  Scenario: listaTitulos[].enderecoPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].enderecoPagador com tipo incorreto.
  Scenario: listaTitulos[].enderecoPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": 999,
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].complementoEnderecoPagador maior que o máximo.
  Scenario: listaTitulos[].complementoEnderecoPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].complementoEnderecoPagador com tipo incorreto.
  Scenario: listaTitulos[].complementoEnderecoPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoPagador": 999,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].bairroPagador maior que o máximo.
  Scenario: listaTitulos[].bairroPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].bairroPagador com tipo incorreto.
  Scenario: listaTitulos[].bairroPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroPagador": 999,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].cepPagador.
  Scenario: listaTitulos[].cepPagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].cepPagador.
  Scenario: listaTitulos[].cepPagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": null,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cepPagador com tipo incorreto.
  Scenario: listaTitulos[].cepPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": "texto_invalido",
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].cidadePagador.
  Scenario: listaTitulos[].cidadePagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].cidadePagador.
  Scenario: listaTitulos[].cidadePagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": null,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cidadePagador menor que o mínimo.
  Scenario: listaTitulos[].cidadePagador abaixo do minLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cidadePagador maior que o máximo.
  Scenario: listaTitulos[].cidadePagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cidadePagador com tipo incorreto.
  Scenario: listaTitulos[].cidadePagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": 999,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].ufPagador.
  Scenario: listaTitulos[].ufPagador ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].ufPagador.
  Scenario: listaTitulos[].ufPagador null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].ufPagador.
  Scenario: listaTitulos[].ufPagador fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "__VALOR_INVALIDO_ENUM__",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].ufPagador com tipo incorreto.
  Scenario: listaTitulos[].ufPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": 999,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].emailPagador maior que o máximo.
  Scenario: listaTitulos[].emailPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emailPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].emailPagador com tipo incorreto.
  Scenario: listaTitulos[].emailPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emailPagador": 999,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].telefonePagador maior que o máximo.
  Scenario: listaTitulos[].telefonePagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "telefonePagador": "AAAAAAAAAAAAAA",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].telefonePagador com tipo incorreto.
  Scenario: listaTitulos[].telefonePagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "telefonePagador": 999,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].celularPagador maior que o máximo.
  Scenario: listaTitulos[].celularPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "celularPagador": "AAAAAAAAAAAAAA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].celularPagador com tipo incorreto.
  Scenario: listaTitulos[].celularPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "celularPagador": 999,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nossoNumero maior que o máximo.
  Scenario: listaTitulos[].nossoNumero acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "nossoNumero": "AAAAAAAAAAAAAAAA",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nossoNumero com tipo incorreto.
  Scenario: listaTitulos[].nossoNumero com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "nossoNumero": 999,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoMora.
  Scenario: listaTitulos[].tipoMora ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoMora.
  Scenario: listaTitulos[].tipoMora null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": null,
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoMora.
  Scenario: listaTitulos[].tipoMora fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "__VALOR_INVALIDO_ENUM__",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoMora com tipo incorreto.
  Scenario: listaTitulos[].tipoMora com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": 999,
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorMora.
  Scenario: listaTitulos[].valorMora null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMora": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorMora com tipo incorreto.
  Scenario: listaTitulos[].valorMora com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMora": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].especie.
  Scenario: listaTitulos[].especie ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].especie.
  Scenario: listaTitulos[].especie null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].especie.
  Scenario: listaTitulos[].especie fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "__VALOR_INVALIDO_ENUM__",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].especie com tipo incorreto.
  Scenario: listaTitulos[].especie com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": 999,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].aceite.
  Scenario: listaTitulos[].aceite ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].aceite.
  Scenario: listaTitulos[].aceite null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": null,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].aceite menor que o mínimo.
  Scenario: listaTitulos[].aceite abaixo do minLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].aceite maior que o máximo.
  Scenario: listaTitulos[].aceite acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "AA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].aceite com tipo incorreto.
  Scenario: listaTitulos[].aceite com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": 999,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoInscricaoBeneficiarioFinal.
  Scenario: listaTitulos[].tipoInscricaoBeneficiarioFinal null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoBeneficiarioFinal": null,
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoInscricaoBeneficiarioFinal.
  Scenario: listaTitulos[].tipoInscricaoBeneficiarioFinal fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoBeneficiarioFinal": "__VALOR_INVALIDO_ENUM__",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoInscricaoBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].tipoInscricaoBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoBeneficiarioFinal": 999,
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].numeroInscricaoBeneficiarioFinal maior que o máximo.
  Scenario: listaTitulos[].numeroInscricaoBeneficiarioFinal acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoBeneficiarioFinal": "AAAAAAAAAAAAAAA",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].numeroInscricaoBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].numeroInscricaoBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoBeneficiarioFinal": 999,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nomeBeneficiarioFinal maior que o máximo.
  Scenario: listaTitulos[].nomeBeneficiarioFinal acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomeBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].nomeBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].nomeBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomeBeneficiarioFinal": 999,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].enderecoBeneficiarioFinal maior que o máximo.
  Scenario: listaTitulos[].enderecoBeneficiarioFinal acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].enderecoBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].enderecoBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoBeneficiarioFinal": 999,
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].complementoEnderecoBeneficiarioFinal maior que o máximo.
  Scenario: listaTitulos[].complementoEnderecoBeneficiarioFinal acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].complementoEnderecoBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].complementoEnderecoBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "complementoEnderecoBeneficiarioFinal": 999,
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].bairroBeneficiarioFinal maior que o máximo.
  Scenario: listaTitulos[].bairroBeneficiarioFinal acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].bairroBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].bairroBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "bairroBeneficiarioFinal": 999,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].cepBeneficiarioFinal.
  Scenario: listaTitulos[].cepBeneficiarioFinal null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepBeneficiarioFinal": null,
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cepBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].cepBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepBeneficiarioFinal": "texto_invalido",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cidadeBeneficiarioFinal maior que o máximo.
  Scenario: listaTitulos[].cidadeBeneficiarioFinal acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadeBeneficiarioFinal": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].cidadeBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].cidadeBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadeBeneficiarioFinal": 999,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].ufBeneficiarioFinal.
  Scenario: listaTitulos[].ufBeneficiarioFinal null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": null,
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].ufBeneficiarioFinal.
  Scenario: listaTitulos[].ufBeneficiarioFinal fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": "__VALOR_INVALIDO_ENUM__",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].ufBeneficiarioFinal com tipo incorreto.
  Scenario: listaTitulos[].ufBeneficiarioFinal com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufBeneficiarioFinal": 999,
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoPagamento.
  Scenario: listaTitulos[].tipoPagamento ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoPagamento.
  Scenario: listaTitulos[].tipoPagamento null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": null,
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoPagamento.
  Scenario: listaTitulos[].tipoPagamento fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "__VALOR_INVALIDO_ENUM__",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoPagamento com tipo incorreto.
  Scenario: listaTitulos[].tipoPagamento com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": 999,
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].quantidadePagamentosPossiveis.
  Scenario: listaTitulos[].quantidadePagamentosPossiveis null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "quantidadePagamentosPossiveis": null,
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].quantidadePagamentosPossiveis com tipo incorreto.
  Scenario: listaTitulos[].quantidadePagamentosPossiveis com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "quantidadePagamentosPossiveis": "texto_invalido",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoValorMaximo.
  Scenario: listaTitulos[].tipoValorMaximo ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoValorMaximo.
  Scenario: listaTitulos[].tipoValorMaximo null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": null,
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoValorMaximo.
  Scenario: listaTitulos[].tipoValorMaximo fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "__VALOR_INVALIDO_ENUM__",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoValorMaximo com tipo incorreto.
  Scenario: listaTitulos[].tipoValorMaximo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": 999,
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorMaximo.
  Scenario: listaTitulos[].valorMaximo null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMaximo": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorMaximo com tipo incorreto.
  Scenario: listaTitulos[].valorMaximo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMaximo": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoValorMinimo.
  Scenario: listaTitulos[].tipoValorMinimo ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoValorMinimo.
  Scenario: listaTitulos[].tipoValorMinimo null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": null,
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoValorMinimo.
  Scenario: listaTitulos[].tipoValorMinimo fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "__VALOR_INVALIDO_ENUM__",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoValorMinimo com tipo incorreto.
  Scenario: listaTitulos[].tipoValorMinimo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": 999,
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorMinimo.
  Scenario: listaTitulos[].valorMinimo null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMinimo": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorMinimo com tipo incorreto.
  Scenario: listaTitulos[].valorMinimo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMinimo": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorIOF.
  Scenario: listaTitulos[].valorIOF null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorIOF": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorIOF com tipo incorreto.
  Scenario: listaTitulos[].valorIOF com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorIOF": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoMulta.
  Scenario: listaTitulos[].tipoMulta ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoMulta.
  Scenario: listaTitulos[].tipoMulta null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": null,
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoMulta.
  Scenario: listaTitulos[].tipoMulta fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "__VALOR_INVALIDO_ENUM__",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoMulta com tipo incorreto.
  Scenario: listaTitulos[].tipoMulta com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": 999,
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].valorMulta.
  Scenario: listaTitulos[].valorMulta null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMulta": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].valorMulta com tipo incorreto.
  Scenario: listaTitulos[].valorMulta com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorMulta": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].numDiasMulta.
  Scenario: listaTitulos[].numDiasMulta null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numDiasMulta": null,
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].numDiasMulta com tipo incorreto.
  Scenario: listaTitulos[].numDiasMulta com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numDiasMulta": "texto_invalido",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoPostagem.
  Scenario: listaTitulos[].tipoPostagem ausente
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoPostagem.
  Scenario: listaTitulos[].tipoPostagem null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": null,
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoPostagem.
  Scenario: listaTitulos[].tipoPostagem fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "__VALOR_INVALIDO_ENUM__",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoPostagem com tipo incorreto.
  Scenario: listaTitulos[].tipoPostagem com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": 999,
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem1 maior que o máximo.
  Scenario: listaTitulos[].mensagem1 acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem1": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem1 com tipo incorreto.
  Scenario: listaTitulos[].mensagem1 com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem1": 999,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem2 maior que o máximo.
  Scenario: listaTitulos[].mensagem2 acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem2": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem2 com tipo incorreto.
  Scenario: listaTitulos[].mensagem2 com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem2": 999,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem3 maior que o máximo.
  Scenario: listaTitulos[].mensagem3 acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem3": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem3 com tipo incorreto.
  Scenario: listaTitulos[].mensagem3 com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem3": 999,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem4 maior que o máximo.
  Scenario: listaTitulos[].mensagem4 acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem4": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].mensagem4 com tipo incorreto.
  Scenario: listaTitulos[].mensagem4 com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "mensagem4": 999,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].transactionID maior que o máximo.
  Scenario: listaTitulos[].transactionID acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "transactionID": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].transactionID com tipo incorreto.
  Scenario: listaTitulos[].transactionID com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "transactionID": 999,
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].chavePix maior que o máximo.
  Scenario: listaTitulos[].chavePix acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "chavePix": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].chavePix com tipo incorreto.
  Scenario: listaTitulos[].chavePix com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "chavePix": 999,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].validadeAposVencimento.
  Scenario: listaTitulos[].validadeAposVencimento null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "validadeAposVencimento": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].validadeAposVencimento com tipo incorreto.
  Scenario: listaTitulos[].validadeAposVencimento com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "validadeAposVencimento": "texto_invalido",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoDiasBaixa.
  Scenario: listaTitulos[].tipoDiasBaixa null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoDiasBaixa": null,
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em listaTitulos[].tipoDiasBaixa.
  Scenario: listaTitulos[].tipoDiasBaixa fora do enum
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoDiasBaixa": "__VALOR_INVALIDO_ENUM__",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].tipoDiasBaixa com tipo incorreto.
  Scenario: listaTitulos[].tipoDiasBaixa com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoDiasBaixa": 999,
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].solicitacaoPagador maior que o máximo.
  Scenario: listaTitulos[].solicitacaoPagador acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "solicitacaoPagador": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].solicitacaoPagador com tipo incorreto.
  Scenario: listaTitulos[].solicitacaoPagador com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "solicitacaoPagador": 999,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].imprimirInformacaoAdicional.
  Scenario: listaTitulos[].imprimirInformacaoAdicional null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "imprimirInformacaoAdicional": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].imprimirInformacaoAdicional com tipo incorreto.
  Scenario: listaTitulos[].imprimirInformacaoAdicional com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "imprimirInformacaoAdicional": "true",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].informacoesAdicionais com tipo incorreto.
  Scenario: listaTitulos[].informacoesAdicionais com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": "nao_e_array",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].informacoesAdicionais[].nomeCampo maior que o máximo.
  Scenario: listaTitulos[].informacoesAdicionais[].nomeCampo acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "nomeCampo": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].informacoesAdicionais[].nomeCampo com tipo incorreto.
  Scenario: listaTitulos[].informacoesAdicionais[].nomeCampo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "nomeCampo": 999
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].informacoesAdicionais[].valorCampo maior que o máximo.
  Scenario: listaTitulos[].informacoesAdicionais[].valorCampo acima do maxLength
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "valorCampo": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].informacoesAdicionais[].valorCampo com tipo incorreto.
  Scenario: listaTitulos[].informacoesAdicionais[].valorCampo com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "informacoesAdicionais": [
              {
                "valorCampo": 999
              }
            ],
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].taxaOperacao.
  Scenario: listaTitulos[].taxaOperacao null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "taxaOperacao": null,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].taxaOperacao com tipo incorreto.
  Scenario: listaTitulos[].taxaOperacao com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "taxaOperacao": "texto_invalido",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].taxaCusto.
  Scenario: listaTitulos[].taxaCusto null inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "taxaCusto": null,
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita listaTitulos[].taxaCusto com tipo incorreto.
  Scenario: listaTitulos[].taxaCusto com tipo inválido
    Given a negative schema case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "taxaCusto": "texto_invalido",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400


  # Decision Table Positive
  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoInscricaoPagador, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, listaTitulos[].tipoPagamento, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].especie, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, listaTitulos[].tipoValorMaximo, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, listaTitulos[].tipoDesconto, codigoCarteira, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, listaTitulos[].tipoValorMinimo, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoAbatimento, listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, listaTitulos[].tipoPagamento, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoMulta, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, listaTitulos[].tipoValorMaximo, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Isento",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoInscricaoPagador, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].ufPagador, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoPagamento, listaTitulos[].ufPagador, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, listaTitulos[].tipoValorMinimo, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].ufPagador, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, listaTitulos[].tipoDesconto, codigoCarteira, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMulta, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoPagamento, listaTitulos[].tipoProtesto, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, listaTitulos[].tipoDesconto, codigoCarteira, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, listaTitulos[].tipoPagamento, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, listaTitulos[].especie, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo, listaTitulos[].tipoMulta"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMulta, listaTitulos[].ufPagador, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, listaTitulos[].tipoMulta, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoAbatimento, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200

  # Valida combinação de campos discretos via pairwise.
  Scenario: Combinação válida de parâmetros discretos (pairwise)
    Given a decision table positive case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, listaTitulos[].tipoMulta, codigoCarteira, listaTitulos[].tipoDesconto, listaTitulos[].tipoProtesto, listaTitulos[].tipoInscricaoPagador, listaTitulos[].ufPagador, listaTitulos[].tipoMora, listaTitulos[].especie, listaTitulos[].tipoPagamento, listaTitulos[].tipoValorMaximo, listaTitulos[].tipoValorMinimo"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 200


  # Decision Table Negative
  # Valida que o endpoint rejeita valor inválido em codigoCarteira.
  Scenario: Combinação com valor inválido em codigoCarteira
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "__VALOR_INVALIDO_ENUM__",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoValorMinimo.
  Scenario: Combinação com ausência de listaTitulos[].tipoValorMinimo
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoValorMinimo, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoCarteira.
  Scenario: Combinação com null inválido em codigoCarteira
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": null,
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoAbatimento.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoAbatimento
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "__VALOR_INVALIDO_ENUM__",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoAbatimento.
  Scenario: Combinação com ausência de listaTitulos[].tipoAbatimento
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoProtesto.
  Scenario: Combinação com null inválido em listaTitulos[].tipoProtesto
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": null,
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoProtesto, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoMora.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoMora
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "__VALOR_INVALIDO_ENUM__",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoMora.
  Scenario: Combinação com ausência de listaTitulos[].tipoMora
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoPagamento.
  Scenario: Combinação com null inválido em listaTitulos[].tipoPagamento
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": null,
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoPagamento, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoValorMaximo.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoValorMaximo
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "__VALOR_INVALIDO_ENUM__",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoValorMaximo, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoValorMinimo.
  Scenario: Combinação com ausência de listaTitulos[].tipoValorMinimo
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoValorMinimo, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoMulta.
  Scenario: Combinação com null inválido em listaTitulos[].tipoMulta
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": null,
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMulta, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em codigoCarteira.
  Scenario: Combinação com valor inválido em codigoCarteira
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "__VALOR_INVALIDO_ENUM__",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoValorMaximo.
  Scenario: Combinação com ausência de listaTitulos[].tipoValorMaximo
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoValorMaximo, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoCarteira.
  Scenario: Combinação com null inválido em codigoCarteira
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": null,
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Isento",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoDesconto.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoDesconto
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "__VALOR_INVALIDO_ENUM__",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoDesconto, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoProtesto.
  Scenario: Combinação com ausência de listaTitulos[].tipoProtesto
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "PessoaFisica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoProtesto, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].ufPagador.
  Scenario: Combinação com null inválido em listaTitulos[].ufPagador
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Valor",
            "ufPagador": null,
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].ufPagador, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoMora.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoMora
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "__VALOR_INVALIDO_ENUM__",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoMora.
  Scenario: Combinação com ausência de listaTitulos[].tipoMora
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "ValorFixo",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Percentual",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMora, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].especie.
  Scenario: Combinação com null inválido em listaTitulos[].especie
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "ValorDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "Valor",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoPagamento.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoPagamento
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "__VALOR_INVALIDO_ENUM__",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "Percentual",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoPagamento, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoValorMinimo.
  Scenario: Combinação com ausência de listaTitulos[].tipoValorMinimo
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataDeServico",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasCorridos",
            "tipoValorMaximo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoValorMinimo, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoMulta.
  Scenario: Combinação com null inválido em listaTitulos[].tipoMulta
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "CessaoDeCreditoCompra",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "ValorPorAntecipacaoDiaCorrido",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": null,
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "Valor",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AP",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoMulta, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].especie.
  Scenario: Combinação com valor inválido em listaTitulos[].especie
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "__VALOR_INVALIDO_ENUM__",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "PercentualAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoProtesto.
  Scenario: Combinação com ausência de listaTitulos[].tipoProtesto
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "PercentualMensalDiasCorridos",
            "tipoMulta": "Isento",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoProtesto, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em codigoCarteira.
  Scenario: Combinação com null inválido em codigoCarteira
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": null,
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "EntreOMinimoEOMaximo",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "ProtestarDiasUteis",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AL",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "codigoCarteira, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoAbatimento.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoAbatimento
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "Cheque",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "__VALOR_INVALIDO_ENUM__",
            "tipoDesconto": "ValorFixoAteDataInformada",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoAceitaPagamentoComOValorDivergente",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].tipoAbatimento.
  Scenario: Combinação com ausência de listaTitulos[].tipoAbatimento
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "Desconto",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "PessoaJuridica",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "AceitaQualquerValor",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoAbatimento, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].tipoInscricaoPagador.
  Scenario: Combinação com null inválido em listaTitulos[].tipoInscricaoPagador
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "AdiantamentoFornecedor",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "DuplicataMercantil",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": null,
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoInscricaoPagador, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em listaTitulos[].tipoInscricaoPagador.
  Scenario: Combinação com valor inválido em listaTitulos[].tipoInscricaoPagador
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Percentual",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "__VALOR_INVALIDO_ENUM__",
            "tipoMora": "NaoInformado",
            "tipoMulta": "Percentual",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AM",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].tipoInscricaoPagador, enum/type"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de listaTitulos[].ufPagador.
  Scenario: Combinação com ausência de listaTitulos[].ufPagador
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": "NaoInformado",
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "NaoInformado",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "PercentualDiarioDiasCorridos",
            "tipoMulta": "ValorFixo",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoInformado",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].ufPagador, required"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em listaTitulos[].especie.
  Scenario: Combinação com null inválido em listaTitulos[].especie
    Given a decision table negative case for "/InclusaoTitulo"
    And the request payload is:
      """
      {
        "codigoCarteira": "NaoInformada",
        "codigoConvenio": 1.0,
        "codigoModalidade": 1.0,
        "listaTitulos": [
          {
            "aceite": "A",
            "cepPagador": 1,
            "cidadePagador": "A",
            "emissao": "2025-01-15T10:30:00Z",
            "enderecoPagador": "A",
            "especie": null,
            "nomePagador": "A",
            "numeroInscricaoPagador": "A",
            "seuNumero": "A",
            "tipoAbatimento": "Isento",
            "tipoDesconto": "SemDesconto",
            "tipoInscricaoPagador": "NaoInformado",
            "tipoMora": "NaoInformado",
            "tipoMulta": "NaoInformado",
            "tipoPagamento": "NaoInformado",
            "tipoPostagem": "Nenhuma",
            "tipoProtesto": "NaoProtestar",
            "tipoValorMaximo": "NaoInformado",
            "tipoValorMinimo": "NaoInformado",
            "ufPagador": "AC",
            "valorTitulo": 1.0,
            "vencimento": "2025-01-15T10:30:00Z"
          }
        ]
      }
      """
    And the validation focus should include "listaTitulos[].especie, nullable"
    When the client sends the request to "POST /InclusaoTitulo"
    Then the response status should be 400

```


## Feature: Incluir títulos (POST /InclusaoTituloAdf)

```gherkin
Feature: Incluir títulos (POST /InclusaoTituloAdf)

  Background:
    Given the API endpoint is "POST /InclusaoTituloAdf"
    And the endpoint summary is "Incluir títulos"
    And the request path is "/InclusaoTituloAdf"
    And the HTTP method is "POST"
    And the endpoint tags are "InclusaoTituloAdf"

  # Positive Schema
  # Valida que o endpoint aceita payload com apenas campos obrigatórios válidos.
  Scenario: Payload mínimo válido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required, type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.ancora.cpfCnpj aceita exatamente o tamanho mínimo.
  Scenario: operacao.ancora.cpfCnpj no minLength
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.ancora.nome aceita null conforme o schema.
  Scenario: operacao.ancora.nome nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "nome": null,
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.digitoVerificadorAgencia aceita null conforme o schema.
  Scenario: operacao.fornecedor.digitoVerificadorAgencia nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "digitoVerificadorAgencia": null,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.cpfCnpj aceita exatamente o tamanho mínimo.
  Scenario: operacao.fornecedor.cpfCnpj no minLength
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.nome aceita null conforme o schema.
  Scenario: operacao.fornecedor.nome nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "nome": null,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.endereco aceita null conforme o schema.
  Scenario: operacao.fornecedor.endereco nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "endereco": null,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.numero aceita null conforme o schema.
  Scenario: operacao.fornecedor.numero nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "numero": null,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.cep aceita null conforme o schema.
  Scenario: operacao.fornecedor.cep nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "cep": null,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.cidade aceita null conforme o schema.
  Scenario: operacao.fornecedor.cidade nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "cidade": null,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AC"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AL"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AP"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AM"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "BA"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "CE"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "DF"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "ES"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "GO"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "MA"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "MT"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "MS"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "MG"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "PA"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "PB"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "PR"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "PE"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "PI"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "RJ"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "RN"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "RS"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "RO"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "RR"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "SC"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "SP"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "SE"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "TO"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.fornecedor.uf aceita valor permitido no enum.
  Scenario: operacao.fornecedor.uf com valor válido de enum
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "NaoInformado"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.titulos aceita null conforme o schema.
  Scenario: operacao.titulos nulo permitido
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": null
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.titulos[].seuNumero aceita exatamente o tamanho mínimo.
  Scenario: operacao.titulos[].seuNumero no minLength
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida que operacao.titulos[].seuNumero aceita exatamente o tamanho máximo.
  Scenario: operacao.titulos[].seuNumero no maxLength
    Given a positive schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200


  # Negative Schema
  # Valida que o endpoint rejeita ausência de operacao.
  Scenario: operacao ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.
  Scenario: operacao null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": null
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao com tipo incorreto.
  Scenario: operacao com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": "nao_e_objeto"
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.ancora.
  Scenario: operacao.ancora ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.ancora.
  Scenario: operacao.ancora null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": null,
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.ancora com tipo incorreto.
  Scenario: operacao.ancora com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": "nao_e_objeto",
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.ancora.tipo.
  Scenario: operacao.ancora.tipo ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A"
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.ancora.tipo.
  Scenario: operacao.ancora.tipo null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": null
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.ancora.tipo com tipo incorreto.
  Scenario: operacao.ancora.tipo com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": "texto_invalido"
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.ancora.cpfCnpj.
  Scenario: operacao.ancora.cpfCnpj ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.ancora.cpfCnpj.
  Scenario: operacao.ancora.cpfCnpj null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": null,
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.ancora.cpfCnpj menor que o mínimo.
  Scenario: operacao.ancora.cpfCnpj abaixo do minLength
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.ancora.cpfCnpj com tipo incorreto.
  Scenario: operacao.ancora.cpfCnpj com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": 999,
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.ancora.nome com tipo incorreto.
  Scenario: operacao.ancora.nome com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "nome": 999,
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.fornecedor.
  Scenario: operacao.fornecedor ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.
  Scenario: operacao.fornecedor null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": null,
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor com tipo incorreto.
  Scenario: operacao.fornecedor com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": "nao_e_objeto",
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.fornecedor.banco.
  Scenario: operacao.fornecedor.banco ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.banco.
  Scenario: operacao.fornecedor.banco null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": null,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.banco com tipo incorreto.
  Scenario: operacao.fornecedor.banco com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": "texto_invalido",
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.fornecedor.agencia.
  Scenario: operacao.fornecedor.agencia ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.agencia.
  Scenario: operacao.fornecedor.agencia null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": null,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.agencia com tipo incorreto.
  Scenario: operacao.fornecedor.agencia com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": "texto_invalido",
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.digitoVerificadorAgencia com tipo incorreto.
  Scenario: operacao.fornecedor.digitoVerificadorAgencia com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "digitoVerificadorAgencia": 999,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.fornecedor.conta.
  Scenario: operacao.fornecedor.conta ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.conta.
  Scenario: operacao.fornecedor.conta null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": null,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.conta com tipo incorreto.
  Scenario: operacao.fornecedor.conta com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": "texto_invalido",
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.fornecedor.tipo.
  Scenario: operacao.fornecedor.tipo ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.tipo.
  Scenario: operacao.fornecedor.tipo null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": null
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.tipo com tipo incorreto.
  Scenario: operacao.fornecedor.tipo com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": "texto_invalido"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.fornecedor.cpfCnpj.
  Scenario: operacao.fornecedor.cpfCnpj ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.cpfCnpj.
  Scenario: operacao.fornecedor.cpfCnpj null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": null,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.cpfCnpj menor que o mínimo.
  Scenario: operacao.fornecedor.cpfCnpj abaixo do minLength
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.cpfCnpj com tipo incorreto.
  Scenario: operacao.fornecedor.cpfCnpj com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": 999,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.nome com tipo incorreto.
  Scenario: operacao.fornecedor.nome com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "nome": 999,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.endereco com tipo incorreto.
  Scenario: operacao.fornecedor.endereco com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "endereco": 999,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.numero com tipo incorreto.
  Scenario: operacao.fornecedor.numero com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "numero": 999,
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.cep com tipo incorreto.
  Scenario: operacao.fornecedor.cep com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "cep": "texto_invalido",
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.cidade com tipo incorreto.
  Scenario: operacao.fornecedor.cidade com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "cidade": 999,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.uf.
  Scenario: operacao.fornecedor.uf null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": null
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor fora do enum em operacao.fornecedor.uf.
  Scenario: operacao.fornecedor.uf fora do enum
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "__VALOR_INVALIDO_ENUM__"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "enum"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.fornecedor.uf com tipo incorreto.
  Scenario: operacao.fornecedor.uf com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": 999
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.titulos.
  Scenario: operacao.titulos ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          }
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos com tipo incorreto.
  Scenario: operacao.titulos com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": "nao_e_array"
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.titulos[].seuNumero.
  Scenario: operacao.titulos[].seuNumero ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.titulos[].seuNumero.
  Scenario: operacao.titulos[].seuNumero null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": null,
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos[].seuNumero menor que o mínimo.
  Scenario: operacao.titulos[].seuNumero abaixo do minLength
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, minLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos[].seuNumero maior que o máximo.
  Scenario: operacao.titulos[].seuNumero acima do maxLength
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type, maxLength"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos[].seuNumero com tipo incorreto.
  Scenario: operacao.titulos[].seuNumero com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": 999,
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.titulos[].dataVencimento.
  Scenario: operacao.titulos[].dataVencimento ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.titulos[].dataVencimento.
  Scenario: operacao.titulos[].dataVencimento null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": null,
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos[].dataVencimento com tipo incorreto.
  Scenario: operacao.titulos[].dataVencimento com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": 999,
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.titulos[].valorFace.
  Scenario: operacao.titulos[].valorFace ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.titulos[].valorFace.
  Scenario: operacao.titulos[].valorFace null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": null,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos[].valorFace com tipo incorreto.
  Scenario: operacao.titulos[].valorFace com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": "texto_invalido",
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita ausência de operacao.titulos[].valorLiquido.
  Scenario: operacao.titulos[].valorLiquido ausente
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "required"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.titulos[].valorLiquido.
  Scenario: operacao.titulos[].valorLiquido null inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": null
            }
          ]
        }
      }
      """
    And the validation focus should include "nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita operacao.titulos[].valorLiquido com tipo incorreto.
  Scenario: operacao.titulos[].valorLiquido com tipo inválido
    Given a negative schema case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": "texto_invalido"
            }
          ]
        }
      }
      """
    And the validation focus should include "type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400


  # Decision Table Positive
  # Valida combinação de campos discretos via full.
  Scenario: Combinação válida de parâmetros discretos (full)
    Given a decision table positive case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AC"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida combinação de campos discretos via full.
  Scenario: Combinação válida de parâmetros discretos (full)
    Given a decision table positive case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AL"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida combinação de campos discretos via full.
  Scenario: Combinação válida de parâmetros discretos (full)
    Given a decision table positive case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AP"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200

  # Valida combinação de campos discretos via full.
  Scenario: Combinação válida de parâmetros discretos (full)
    Given a decision table positive case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "AM"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 200


  # Decision Table Negative
  # Valida que o endpoint rejeita valor inválido em operacao.fornecedor.uf.
  Scenario: Combinação com valor inválido em operacao.fornecedor.uf
    Given a decision table negative case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "__VALOR_INVALIDO_ENUM__"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf, enum/type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita null em operacao.fornecedor.uf.
  Scenario: Combinação com null inválido em operacao.fornecedor.uf
    Given a decision table negative case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": null
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf, nullable"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em operacao.fornecedor.uf.
  Scenario: Combinação com valor inválido em operacao.fornecedor.uf
    Given a decision table negative case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "__VALOR_INVALIDO_ENUM__"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf, enum/type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

  # Valida que o endpoint rejeita valor inválido em operacao.fornecedor.uf.
  Scenario: Combinação com valor inválido em operacao.fornecedor.uf
    Given a decision table negative case for "/InclusaoTituloAdf"
    And the request payload is:
      """
      {
        "operacao": {
          "ancora": {
            "cpfCnpj": "A",
            "tipo": 1.0
          },
          "fornecedor": {
            "agencia": 1.0,
            "banco": 1.0,
            "conta": 1.0,
            "cpfCnpj": "A",
            "tipo": 1.0,
            "uf": "__VALOR_INVALIDO_ENUM__"
          },
          "titulos": [
            {
              "dataVencimento": "2025-01-15T10:30:00Z",
              "seuNumero": "A",
              "valorFace": 1.0,
              "valorLiquido": 1.0
            }
          ]
        }
      }
      """
    And the validation focus should include "operacao.fornecedor.uf, enum/type"
    When the client sends the request to "POST /InclusaoTituloAdf"
    Then the response status should be 400

```


## Feature: Recupera as informações da transação pelo controle da instituição financeira (GET /api/Transacao/consulta-por-controle/{controle})

```gherkin
Feature: Recupera as informações da transação pelo controle da instituição financeira (GET /api/Transacao/consulta-por-controle/{controle})

  Background:
    Given the API endpoint is "GET /api/Transacao/consulta-por-controle/{controle}"
    And the endpoint summary is "Recupera as informações da transação pelo controle da instituição financeira"
    And the request path is "/api/Transacao/consulta-por-controle/{controle}"
    And the HTTP method is "GET"
    And the endpoint tags are "Transacao"

  Scenario: No scenarios available
    Given the test-generator result did not include renderable scenarios
    Then the BDD output should capture the endpoint metadata only
```


## Feature: Recupera as informações da transação pela chave da transação (GET /api/Transacao/consulta-por-chave/{chaveTransacao})

```gherkin
Feature: Recupera as informações da transação pela chave da transação (GET /api/Transacao/consulta-por-chave/{chaveTransacao})

  Background:
    Given the API endpoint is "GET /api/Transacao/consulta-por-chave/{chaveTransacao}"
    And the endpoint summary is "Recupera as informações da transação pela chave da transação"
    And the request path is "/api/Transacao/consulta-por-chave/{chaveTransacao}"
    And the HTTP method is "GET"
    And the endpoint tags are "Transacao"

  Scenario: No scenarios available
    Given the test-generator result did not include renderable scenarios
    Then the BDD output should capture the endpoint metadata only
```
